# Lab 2: Viliam Krištof
### Pre-Lab preparation
  | *Dec. equivalent* | *B[1:0]* | *A[1:0]* | *B is greater than A* | *B equals A* | *B is less than A* |
   | :-: | :-: | :-: | :-: | :-: | :-: |
   |  1 | 0 0 | 0 0 | 0 | 1 | 0 |
   |  2 | 0 0 | 0 1 | 0 | 0 | 1 |
   |  3 | 0 0 | 1 0 | 0 | 0 | 1 |
   |  4 | 0 0 | 1 1 | 0 | 0 | 1 |
   |  5 | 0 1 | 0 0 | 1 | 0 | 0 |
   |  6 | 0 1 | 0 1 | 0 | 1 | 0 |
   |  7 | 0 1 | 1 0 | 0 | 0 | 1 |
   |  8 | 0 1 | 1 1 | 0 | 0 | 1 |
   |  9 | 1 0 | 0 0 | 1 | 0 | 0 |
   | 10 | 1 0 | 0 1 | 1 | 0 | 0 |
   | 11 | 1 0 | 1 0 | 0 | 1 | 0 |
   | 12 | 1 0 | 1 1 | 0 | 0 | 1 |
   | 13 | 1 1 | 0 0 | 1 | 0 | 0 |
   | 14 | 1 1 | 0 1 | 1 | 0 | 0 |
   | 15 | 1 1 | 1 0 | 1 | 0 | 0 |
   | 16 | 1 1 | 1 1 | 0 | 1 | 0 |
Write to Samuel Gubi

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:
![BvacsieakoA](https://user-images.githubusercontent.com/124798762/220157697-18af005b-f3a0-4707-9917-4fee5b10b50a.jpg)

  

   Less than:
![BmensieakoA](https://user-images.githubusercontent.com/124798762/220157719-56feae80-ada9-4f36-ac0d-f88604c6d290.jpg)



2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

![rovnice](https://user-images.githubusercontent.com/124798762/220157736-b19feb10-8dc2-4836-ae3b-f160d66b6b83.jpg)


### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **77**

p_stimulus : process
        begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "0111"; --číšlo 7 
        s_a <= "0001"; --čislo 1
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination b=0111; a=0001 FAILED" severity error;
        
         -- Second test case
        s_b <= "0111"; 
        s_a <= "0001";
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and --vypíše chybu
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination b=0111; a=0001 FAILED" severity error;
        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://edaplayground.com/x/iB_M)

