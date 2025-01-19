```vhdl
entity multiplier is
  Port ( clock : in  STD_LOGIC;
              reset : in  STD_LOGIC;
              a : in  STD_LOGIC_VECTOR (3 downto 0);
              b : in  STD_LOGIC_VECTOR (3 downto 0);
              product : out  STD_LOGIC_VECTOR (7 downto 0));
end entity;

architecture behavioral of multiplier is

signal temp_product : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
begin
  process (clock, reset)
  begin
    if reset = '1' then
      temp_product <= "00000000";
    elsif rising_edge(clock) then
      temp_product <= std_logic_vector(unsigned(a) * unsigned(b));
    end if;
  end process;

  product <= temp_product;
end architecture;
```