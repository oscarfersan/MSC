library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity f_meter is
  port(
    CLK      : in  std_logic;
    RST      : in  std_logic;
    F_OUT    : in  std_logic;
    F_MED_OK : out std_logic;
    F_MED    : out std_logic_vector(15 downto 0));
end f_meter;

architecture rtl of f_meter is

constant CTE_DISP: integer := 100000; -- simulacion
-- constant CTE_DISP: integer := 1e8; -- simulacion
signal cnt_prescaler : integer range 0 to CTE_DISP -1;
signal ce_prescaler: std_logic;

signal unidades, decenas, centenas, millares: unsigned(3 downto 0);
signal bcd_register : std_logic_vector(15 downto 0);

signal t_out: std_logic;

begin  -- rtl

process(clk,rst) --Prescaler
begin
  if(rst = '1') then
    cnt_prescaler <= 0;
  elsif clk'event and clk= '1' then
    if cnt_prescaler = CTE_DISP - 1 then
      cnt_prescaler <= 0;
    else
      cnt_prescaler <= cnt_prescaler + 1;
    end if;
  end if;
end process;

ce_prescaler <= '1' when cnt_prescaler = CTE_DISP - 1 else '0'; 

process(clk, rst) --Contador BCD
begin
  if rst = '1' then
    unidades <= (others => '0');
    decenas <=(others =>'0');
    centenas <=(others => '0');
    millares <= (others => '0');
  elsif clk'event and clk = '1' then
    if ce_prescaler = '1' then -- Señal Load
      bcd_register <= std_logic_vector(millares&centenas&decenas&unidades);
    elsif F_OUT = '1' then
      unidades <= unidades + 1;
      if unidades = 9 then
        unidades <= (others => '0');
        decenas <= decenas + 1;
        if decenas = 9 then
          decenas <= (others => '0');
          centenas <= centenas + 1;
          if centenas = 9 then
            centenas <= (others => '0');
            millares <= millares + 1;
          end if;
        end if;
      end if;
    end if;
  end if;
end process;

process(clk) -- Registro final
begin
  if clk'event and clk = '1' then
    if ce_prescaler = '1' then
      F_MED <= bcd_register;
    end if;
  end if;
end process;

process(clk, rst) -- Biestable T. Conmuta salida
begin
  if rst = '1' then
    t_out <= '0';
  elsif clk'event and clk = '1' then
    t_out <= not(t_out);
  end if;
end process;

F_MED_OK <= ce_prescaler when t_out = '1' else '0';

end rtl;
