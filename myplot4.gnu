set terminal pngcairo dashed enhanced font "Times New Roman, 30" size 1200,1084
set output 'plot4.png'

set logs
#set log cb
set xr [1e-2:]
set yr [1e-48:*]
#set cbr [1e-5:100]

set xl "M_{DM} [GeV]" 
set yl "{/Symbol s}_{e} [cm^2]" 
#set cbl "T [10^{3} K]" 

set format y "10^{%L}"
set format y "10^{%L}"
#set format cb "10^{%L}"

set title "{/Symbol r}_{DM} = 10^{4} GeV/cc"

#set palette defined ( 0 "green", 1 "blue", 2 "red", 3 "orange" )
set key center
set key box width 0.1 height 0.5 opaque

p "CompareNewLimit_X10.dat" u ($1*1e-3):($2*1.0e-38) w l lc rgb "red" lw 5 dashtype 1 title "Electron Recoil (Xenon10)",\
"file.txt" u (10**($1)):(1e4*(10**($2))) w l lc rgb "black" lw 5 dashtype 1 title "Neutron Star (T_{*} = 2000 K)"


