* File: Testing the 32b-csa adder

* Include the design netlist files
.include 'csa_cell_smic018.sp'
.include 'csa_module.sp'
.include 'csa_32.sp'

.Global VDD VSS GND
* .OPTION POST=2 NMOD PROBE
.OPTION POST=2 NOMOD LIST POSTTOP=1
.TRAN 10P 1100N
.MEASURE TRAN AVGPWR AVG I(VP) FROM = 2N TO = 1002N
* .MEASURE TRAN tpHL TRIG V(A) VAL=0.9 TD=1N RISE=1 TARG V(OUT1) VAL=0.9 RISE=1
* 
* .PROBE TRAN I(VP) 
* .PROBE TRAN V(cout) V(sout31) V(sout30) V(sout29) V(sout28) V(sout27) V(sout26) V(sout25)
* + V(sout24) V(sout23) V(sout22) V(sout21) V(sout20) V(sout19) V(sout18) V(sout17)
* + V(sout16) V(sout15) V(sout14) V(sout13) V(sout12) V(sout11) V(sout10) V(sout9)
* + V(sout8) V(sout7) V(sout6) V(sout5) V(sout4) V(sout3) V(sout2) V(sout1) V(sout0)
* .PRINT TRAN I(VP)
X1 cout sout31 sout30 sout29 sout28 sout27 sout26 sout25 sout24 sout23 sout22 
+ sout21 sout20 sout19 sout18 sout17 sout16 sout15 sout14 sout13 sout12 sout11 
+ sout10 sout9 sout8 sout7 sout6 sout5 sout4 sout3 sout2 sout1 sout0 
+ A31 A30 A29 A28 A27 A26 A25 A24 A23 A22 A21 A20 A19 A18 A17 A16 
+ A15 A14 A13 A12 A11 A10 A9 A8 A7 A6 A5 A4 A3 A2 A1 A0 
+ B31 B30 B29 B28 B27 B26 B25 B24 B23 B22 B21 B20 B19 B18 B17 B16 
+ B15 B14 B13 B12 B11 B10 B9 B8 B7 B6 B5 B4 B3 B2 B1 B0 cin CSA_32B

C_C0 cout 0 0.02P
C_S0 sout0 0 0.02P
C_S1 sout1 0 0.02P
C_S2 sout2 0 0.02P
C_S3 sout3 0 0.02P
C_S4 sout4 0 0.02P
C_S5 sout5 0 0.02P
C_S6 sout6 0 0.02P
C_S7 sout7 0 0.02P
C_S8 sout8 0 0.02P
C_S9 sout9 0 0.02P
C_S10 sout10 0 0.02P
C_S11 sout11 0 0.02P
C_S12 sout12 0 0.02P
C_S13 sout13 0 0.02P
C_S14 sout14 0 0.02P
C_S15 sout15 0 0.02P
C_S16 sout16 0 0.02P
C_S17 sout17 0 0.02P
C_S18 sout18 0 0.02P
C_S19 sout19 0 0.02P
C_S20 sout20 0 0.02P
C_S21 sout21 0 0.02P
C_S22 sout22 0 0.02P
C_S23 sout23 0 0.02P
C_S24 sout24 0 0.02P
C_S25 sout25 0 0.02P
C_S26 sout26 0 0.02P
C_S27 sout27 0 0.02P
C_S28 sout28 0 0.02P
C_S29 sout29 0 0.02P
C_S30 sout30 0 0.02P
C_S31 sout31 0 0.02P

VP VDD 0 1.8
VS VSS 0 0

.vec 'test1_hs.vec'
.lib 'cmos18_level49.lib' TT

* $$$$$$$
*.ALTER
* $$$$$$$
*X1 cout sout ain bin cin ADDFX1

.end

