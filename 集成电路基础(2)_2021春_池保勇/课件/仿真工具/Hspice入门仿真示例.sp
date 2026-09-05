.title hspice_example
*2016-03-02

.lib 'C:\synopsys\Hspice_A-2007.09\lib\ee214_hspice.txt' nominal
.option post probe dccap runlvl=6

VDD vdd 0 3
VIN in 0 1.5
X1 in out vdd 0 INV

VIN2 in2 0 dc='0.5+1' ac=1
X2 in2 out2 vdd 0 INV
Cout2 out2 0 1p

.subckt INV in out vdd vss
Mp out in vdd vdd pch214 l=0.35u w=4u m=2
Mn out in vss vss nch214 l=0.35u w=4u m=1
.ends

.dc VIN 0 3 0.01
.probe DC vo_X1 = v(out)
.probe DC id_X1 = i1(X1.Mn)

.ac dec 10 1k 100meg
.probe AC vo_X2 = v(out2)

.alter
.del lib 'C:\synopsys\Hspice_A-2007.09\lib\ee214_hspice.txt' nominal
.lib 'C:\synopsys\Hspice_A-2007.09\lib\ee214_hspice_slowfast.txt' fast
.temp -40

.end
