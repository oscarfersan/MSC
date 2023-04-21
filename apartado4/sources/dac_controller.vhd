library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity dac_controller is
  port (
    CLK     : in  std_logic;
    RST     : in  std_logic;
    DOUT    : in  std_logic_vector(11 downto 0);
    DOUT_OK : in  std_logic;
    SYNC    : out std_logic;
    SCLK    : out std_logic;
    DIN     : out std_logic);
end dac_controller;

architecture RTL of dac_controller is
signal dato_cargado: std_logic_vector(15 downto 0);
signal bit_counter: integer range 16 downto 0; -- Empieza la cuenta en 16 para no perder la muestra de 15 en la primera iteracion
signal shf: std_logic;

signal ce: std_logic; -- Clock enable contador
signal t_sclk: std_logic; -- Biestable t sclk
signal t_sync: std_logic; -- Biestable t sync

signal aux_sclk: std_logic;
signal aux_sync: std_logic;

type estado is (REPOSO, Q1, Q2, Q3, Q4);
signal current, siguiente: estado;

begin

process(CLK, RST) -- Registro
begin
  if RST = '1'then
    dato_cargado <= (others => '0');
  elsif CLK'event and CLK = '1' then
    if DOUT_OK = '1' then
      dato_cargado <= (others => '0');
      dato_cargado(11 downto 0)<= DOUT;  
    elsif shf = '1' and bit_counter < 16 then
      DIN <= dato_cargado(bit_counter);
    end if;
  end if;
end process;

-- FSM

-- Proceso enganchado a clk
process(CLK, RST)
begin
  if RST = '1' then
    current <= REPOSO;
  elsif CLK'event and CLK = '1' then
    current <= siguiente;
  end if;
end process;

process (current, DOUT_OK, bit_counter)
begin
  case current is
    when REPOSO =>
      if DOUT_OK = '1' then
        siguiente <= Q1;
        ce <= '1';
      else 
        siguiente <= REPOSO;
        ce <= '0';
      end if;
      aux_sclk <= '0';
      aux_sync <= '1';
    when Q1 =>
      siguiente <= Q2;
      aux_sclk <= '0';
      aux_sync <= '0';
      ce <= '0';
    when Q2 =>
      aux_sclk <= '1';
      siguiente <= Q3;
      aux_sync <= '0';
      ce <= '0';
    when Q3 =>
      aux_sclk <= '1';
      siguiente <= Q4;
      aux_sync <= '0';
      ce <= '0';
    when Q4 =>
      aux_sclk <= '0';
      aux_sync <= '0';
      if bit_counter = 0 then
        siguiente <= REPOSO;
      else 
        siguiente <= Q1;
        ce <= '1';
      end if;
      
  end case;
end process;

process (aux_sclk) -- Generar shf
begin
  if(aux_sclk = '0') then
    shf <= '1';
  else 
    shf <= '0';
  end if;
end process;

-- Contador
process(CLK, RST)
begin
  if(RST = '1') then
    bit_counter <= 16;
  elsif CLK'event and CLK = '1' then
    if(ce = '1') then
      if(bit_counter > 0) then
        bit_counter <= bit_counter - 1;
      else bit_counter <= 16;
      end if;
    end if;
  end if;
end process;

-- Biestables T
process (CLK, RST)
begin
  if RST = '1' then
    t_sclk <= '0';
  elsif CLK'event and CLK = '1' then
    t_sclk <= not(t_sclk);
    SCLK <= aux_sclk;
  end if;
end process;

process (CLK, RST)
begin
  if RST = '1' then
    t_sync <= '0';
  elsif CLK'event and CLK = '1' then
    t_sync <= not(t_sync);
    SYNC <= aux_sync;
  end if;
end process;

end;
