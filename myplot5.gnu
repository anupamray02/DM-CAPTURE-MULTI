set terminal pngcairo dashed enhanced font "Times New Roman, 30" size 1200,1084
set output 'plot51.png'

set logs
#set log cb
set xr [1e-02:1e7]
#set yr [1e-48:*]
#set cbr [1e-5:100]

set xl "M_{DM} [GeV]" 
set yl "{/Symbol s}_{p} [cm^2]" 
#set cbl "T [10^{3} K]" 

set format x "10^{%L}"
set format y "10^{%L}"
#set format cb "10^{%L}"

set title "Contour plot of constant L_{DM}, {/Symbol r}_{DM} = 10^{3} GeV/cc"

#set palette defined ( 0 "green", 1 "blue", 2 "red", 3 "orange" )
set key top right
set key box width 0.1 height 0.5 opaque

er(x)=1e-4 * ((x**2) * 12.0)/((x + 12.0)**2)
Helm2(x)=exp(-er(x)/8.8e-4)

RMRsqr(x)=((12*(x+1.0))/(x+12.0))**2

p "file2.txt" u (10**($1)):((1e4*(10**($2)))/(144.0*Helm2(10**($1))*RMRsqr(10**($1)))) w l lc rgb "black" lw 5 dashtype 1  title "Bound from White Dwarf",\
"cresst3.dat" u 1:($2*1e-36) w l lc rgb "blue" lw 5 dashtype 1 title "Cresst III",\
"X1T.dat" u 1:($2*1e-36) w l lc rgb "red" lw 5 dashtype 1 title "Xenon 1T",\
"file2.txt" u (10**($1)):(3e-39/(144.0*Helm2(10**($1))*RMRsqr(10**($1))))  w l lc rgb "brown" lw 5 dashtype 2 title "{/Symbol s}_{sat}"


