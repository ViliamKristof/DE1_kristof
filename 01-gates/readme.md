# Lab 1: Viliam Krištof

### De Morgan's laws

1. Equations of all three versions of logic function f(c,b,a):

   ![Logic function]<img width="910" alt="DE_1-kristof-graf" src="https://user-images.githubusercontent.com/124798762/217839859-c25604de-6a04-4ea2-a681-90af3dea8312.PNG">


2. Listing of VHDL architecture from design file (`design.vhd`) for all three functions. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture dataflow of gates is
begin
    f_orig_o <= (not(b_i) and a_i) or (c_i and not(b_i or not(a_i)));
    f_nand_o <= not(not(((not(b_i) and (a_i)))) and not(((c_i) and((not(b_i) and (a_i))))));
    f_nor_o  <= not((b_i) or not(a_i)) or not(not(c_i) or ((b_i) or not(a_i)));
end architecture dataflow;
```

3. Complete table with logic functions' values:

   | **c** | **b** |**a** | **f_ORIG** | **f_(N)AND** | **f_(N)OR** |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   | 0 | 0 | 0 | 0 | 0 | 0 |
   | 0 | 0 | 1 | 1 | 1 | 1 |
   | 0 | 1 | 0 | 0 | 0 | 0 |
   | 0 | 1 | 1 | 0 | 0 | 0 |
   | 1 | 0 | 0 | 0 | 0 | 0 |
   | 1 | 0 | 1 | 1 | 1 | 1 |
   | 1 | 1 | 0 | 0 | 0 | 0 |
   | 1 | 1 | 1 | 0 | 0 | 0 |

### Distributive laws

1. Screenshot with simulated time waveforms. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![your figure](![325362879_1366810247472993_3139408070717889853_n](https://user-images.githubusercontent.com/124798762/217839770-053c1bfb-2bee-4660-bf98-6d084873913c.jpg)
)

2. Link to your public EDA Playground example:

  https://edaplayground.com/x/uL8t
