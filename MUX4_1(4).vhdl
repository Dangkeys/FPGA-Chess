entity MUX4_1_4 is 
    port (
        I0 : in std_logic_vector(3 downto 0);
        I1 : in std_logic_vector(3 downto 0);
        I2 : in std_logic_vector(3 downto 0);
        I3 : in std_logic_vector(3 downto 0);
        S : in std_logic_vector(1 downto 0);
        O : out std_logic_vector(3 downto 0)
    );
    end MUX4_1_4;

architecture Behavioral of MUX4_1_4 is
begin
    process(S, I0, I1, I2, I3)
    begin
        case S is
            when "00" =>
                O <= I0;
            when "01" =>
                O <= I1;
            when "10" =>
                O <= I2;
            when "11" =>
                O <= I3;
            when others =>
                O <= (others => 'X');
        end case;
    end process;
end Behavioral;