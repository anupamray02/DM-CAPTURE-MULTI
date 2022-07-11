set terminal pngcairo dashed enhanced font "Times New Roman, 30" size 1200,1084
set output 'plot1.png'

set log y
#set log cb
#set yr [1e-10:1e-4]
#set xr [1e-4:1]
#set cbr [1e-5:100]

set xl "R [10^{6} mtr]" 
set yl "L [10^{28} GeV s^{-1}]" 
set cbl "T [10^{3} K]" 

set format y "10^{%L}"
#set format x "%f"
#set format cb "10^{%L}"

set title "M_{DM} = 100 MeV, {/Symbol r}_{DM} = 10^{4} GeV/cc"

set palette defined ( 0 "green", 1 "blue", 2 "red", 3 "orange" )
set key right bottom
set key box width 1.2 height 1 opaque

p "LTheatPlot.dat" u ($1*1.0):($2/1.0):($3/1.0) w p pt 7 ps 2 lc palette notitle,\
"data1.dat" u 1:($2*0.02) w l lc rgb "black" lw 5 dashtype 2 title "{/Symbol s}_e = 10^{-40} cm^{2}",\
"data2.dat" u 1:($2*0.02) w l lc rgb "black" lw 5 title "{/Symbol s}_e = 10^{-41} cm^{2}",\
"data3.dat" u 1:($2*0.02) w l lc rgb "black" lw 5 title "{/Symbol s}_e = 10^{-41} cm^{2}",\
"data4.dat" u 1:($2*0.02) w l lc rgb "black" lw 5 title "{/Symbol s}_e = 10^{-41} cm^{2}",\
"SigmaSatPlot.dat" u 1:($3*0.02) w l lc rgb "brown" lw 5 title "{/Symbol s}_e = {/Symbol s}_{sat}"


