
library ieee;
  use ieee.std_logic_1164.all;

----------------------------------------------------------
-- Entity declaration for D-type flip-flop
----------------------------------------------------------

entity d_ff is
  port (
    clk   : in    std_logic; --! Main clock
    rst   : in    std_logic; --! High-active synchronous reset
    d     : in    std_logic; --! Data input
    q     : out   std_logic; --! Main output
    q_bar : out   std_logic  --! Complementary output
  );
end entity d_ff;

----------------------------------------------------------
-- Architecture body for D-type flip-flop
----------------------------------------------------------

architecture behavioral of d_ff is

begin

  --------------------------------------------------------
  -- p_d_ff:
  -- D type flip-flop with a high-active synchronous reset
  -- and rising-edge clk.
  -- q(n+1) = d
  --------------------------------------------------------
  p_d_ff : process (clk) is
  begin

    if rising_edge(clk) then      -- Synchronous process
      if (rst = '1') then         -- High-active reset
        q     <= '0';
        q_bar <= '1';
      else
        q     <= d;
        q_bar <= not d;
      end if;
    end if;

  end process p_d_ff;

end architecture behavioral;
