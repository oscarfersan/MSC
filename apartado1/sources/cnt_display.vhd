library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cnt_display is
  port (
    CLK         : in  std_logic;
    RST         : in  std_logic;
    DATO_BCD    : in  std_logic_vector(15 downto 0);
    DATO_BCD_OK : in  std_logic;
    AND_30      : out std_logic_vector(3 downto 0);
    DP          : out std_logic;
    SEG_AG      : out std_logic_vector(6 downto 0));
end cnt_display;

architecture rtl of cnt_display is
  constant CTE_DISP: integer := 208338; -- Division de señal de reloj en la entidad global
  constant CTE_DIGITO: integer:= 52084; -- Division de la señal de reloj para ir cambiando cada uno de los displays. Este valor es CTE_DISP / 4

  -- Valores para implementacion
  -- constant CTE_DISP: integer := 208337500;
  -- constant CTE_DIGITO: integer:= 52084375;

  signal counter_prescaler: integer range 0 to CTE_DIGITO - 1;
  signal counter_prescaler_ce: std_logic;
begin  -- rtl

  -- Prescaler
  process(clk, rst)
  begin
    if rst = '1' then
      counter_prescaler <= 0;
    elsif clk'event and clk = '1' then
      if counter_prescaler = CTE_DIGITO - 1 then
        counter_prescaler <= 0;
      else counter_prescaler <= 1;
      end if;
    end if;
  end process;

  counter_prescaler_ce <= '1' when counter_prescaler = CTE_DIGITO - 1 else '0';
  
end rtl;

