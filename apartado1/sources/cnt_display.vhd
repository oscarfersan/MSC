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
  --constant CTE_DISP: integer := 600; -- Division de señal de reloj en la entidad global
  --constant CTE_DIGITO: integer:= 150; -- Division de la señal de reloj para ir cambiando cada uno de los displays. Este valor es CTE_DISP / 4

  -- Valores para implementacion
  constant CTE_DISP: integer := 600000;
  constant CTE_DIGITO: integer:= 150000;

  signal counter_prescaler: integer range 0 to CTE_DIGITO - 1;
  signal counter_prescaler_ce: std_logic;
  signal counter_multiplexor: integer range 0 to 3;

  signal current_dato_bcd: std_logic_vector(15 downto 0);
  signal checked_dato_bcd: std_logic_vector(15 downto 0);

  signal multiplexor_out: std_logic_vector(3 downto 0);
begin  -- rtl

  -- Prescaler
  process(clk, rst)
  begin
    if rst = '1' then
      counter_prescaler <= 0;
    elsif clk'event and clk = '1' then
      if counter_prescaler = CTE_DIGITO - 1 then
        counter_prescaler <= 0;
      else counter_prescaler <= counter_prescaler + 1;
      end if;
    end if;
  end process;

  counter_prescaler_ce <= '1' when counter_prescaler = CTE_DIGITO - 1 else '0';

  -- Contador
  process(clk, rst)
  begin
    if rst='1' then
      counter_multiplexor <= 0;
    elsif clk'event and clk = '1' then
      if counter_prescaler_ce = '1' then
        if counter_multiplexor = 3 then
          counter_multiplexor <= 0;
        else counter_multiplexor <= counter_multiplexor + 1;
        end if;
      end if;
    end if;
  end process;

  --Registro
  process(clk, rst)
  begin
    if rst = '1' then
      current_dato_bcd <= (others => '0');
    elsif clk'event and clk = '1' then
      if(DATO_BCD_OK = '1') then
        current_dato_bcd <= DATO_BCD;
      end if;
    end if;
  end process;

  --Circuito combinacional que checkea valores del dato bcd guardado
  process(current_dato_bcd)
    variable invalid_bcd: std_logic;
    variable partial_value: unsigned(3 downto 0);
  begin
    checked_dato_bcd <= (others => '0');
    invalid_bcd:= '0';
    for i in 0 to 3 loop
      if invalid_bcd = '0' then
        partial_value := unsigned(current_dato_bcd(3 + i*4 downto i*4));
        if partial_value > 9 then
          invalid_bcd := '1';
        end if;
      end if;
    end loop;

    if invalid_bcd = '0' then
      checked_dato_bcd <= current_dato_bcd;
    else
      checked_dato_bcd <= (others => '1'); -- Valor para en el multiplexor saber que es una señal invalida
    end if;
  end process;


  -- Multiplexor

  process(checked_dato_bcd,counter_multiplexor)
  begin
    case counter_multiplexor is
      when 0 =>
        if checked_dato_bcd(3 downto 0) = x"F" then
          multiplexor_out <= x"C"; -- Enseñar L
        else
          multiplexor_out <= checked_dato_bcd(3 downto 0);
        end if;
      when 1 =>
        if checked_dato_bcd(15 downto 12) = x"0" and checked_dato_bcd(11 downto 8) = x"0" then
          multiplexor_out <= x"D"; -- Usar D para no mostrar
        elsif checked_dato_bcd(7 downto 4) = x"F" then
          multiplexor_out <= x"B"; -- Enseñar I
        else
          multiplexor_out <= checked_dato_bcd(7 downto 4);
        end if;
      when 2 =>
        if checked_dato_bcd(15 downto 12) = x"0" then
          multiplexor_out <= x"D"; -- Usar D para no mostrar
        elsif checked_dato_bcd(11 downto 8) = x"F" then
          multiplexor_out <= x"A"; -- Enseñar A
        else
          multiplexor_out <= checked_dato_bcd(11 downto 8);
        end if;
      when 3 =>
        if checked_dato_bcd(15 downto 12) = x"0" then
          multiplexor_out <= x"D"; -- Usar D para no mostrar
        elsif checked_dato_bcd(15 downto 12) = x"F" then
          multiplexor_out <= x"F"; -- Enseñar F
        else
          multiplexor_out <= checked_dato_bcd(15 downto 12);
        end if;
    end case;

  end process;

  -- Decodificador de 7 segmentos
  process (multiplexor_out) is
    begin
    case multiplexor_out is --gfedcba
      when x"0" =>
        SEG_AG <= not("0111111");
      when x"1" =>
        SEG_AG <= not("0000110");
      when x"2" =>
        SEG_AG <= not("1011011");
      when x"3" =>
        SEG_AG <= not("1001111");
      when x"4" =>
        SEG_AG <= not("1100110");
      when x"5" =>
        SEG_AG <= not("1101101");
      when x"6" =>
        SEG_AG <= not("1111101");
      when x"7" =>
        SEG_AG <= not("0000111");
      when x"8" =>
        SEG_AG <= not("1111111");
      when x"9" =>
        SEG_AG <= not("1100111");
      when x"A" =>
        SEG_AG <= not("1110111");
      when x"B" => -- Este valor se va a tomar como la I para mostrar en el display en caso de FAIL
        SEG_AG <= not("0110000");
      when x"C" => -- Este valor se va a tomar como la L para mostrar en el display en caso de FAIL
        SEG_AG <= not("0111000");
      when x"F" =>
        SEG_AG <= not("1110001");
      when others =>
        SEG_AG <= not("0000000"); 
    end case;
  end process;

  -- Decodificador ands
  process(counter_multiplexor)
    variable ands_out: std_logic_vector(3 downto 0);
  begin
    ands_out := (others =>'1');
    ands_out(counter_multiplexor) := '0';
    AND_30 <= ands_out;
  end process;

  DP <= '1'; -- Presetted value
end rtl;

