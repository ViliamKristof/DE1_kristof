# Lab 6: Viliam Krištof

### Bidirectional counter

1. Listing of VHDL code of the completed process `p_cnt_up_down`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_cnt_up_down:
    -- Clocked process with synchronous reset which implements
    -- n-bit up/down counter.
    --------------------------------------------------------
    p_cnt_up_down : process (clk) is
    begin
      if rising_edge(clk) then
        if (rst = '1') then           -- Synchronous reset
          sig_cnt <= (others => '0'); -- Clear all bits
        elsif (en = '1') then         -- Test if counter is enabled

          -- TEST COUNTER DIRECTION HERE

            sig_cnt <= sig_cnt + 1;
        end if;
      end if;
    end process p_cnt_up_down;
```

2. Screenshot with simulated time waveforms. Test: (a) reset, (b) counter direction, (c) enable. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

  ![screen git](https://user-images.githubusercontent.com/124798762/226917293-38657a3e-8834-410c-978f-86c6009d16e8.png)


### Two counters

1. Image of the top layer structure including both counters, ie a 4-bit bidirectional counter from *Part 4* and a 12-bit counter with a 10 ms time base from *Experiments on your own*. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!
![336774277_1681808875569514_2197418790482862421_n](https://user-images.githubusercontent.com/124798762/226917430-dac428c4-3080-40f9-a2be-f603e72c2ad6.jpg)

   
