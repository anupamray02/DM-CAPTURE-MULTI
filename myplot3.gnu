set terminal pngcairo dashed enhanced font "Times New Roman, 30" size 1200,1084
set output 'plot31.png'

set log y
#set log cb
#set yr [1e-10:1e-4]
#set xr [1e-4:1]
#set cbr [1e-5:100]

set xl "R [10^{6} m]" 
set yl "L [10^{28} GeV s^{-1}]" 
set cbl "T [10^{3} K]" 

set format y "10^{%L}"
#set format x "%f"
#set format cb "10^{%L}"

set title "M_{DM} = 400 MeV, {/Symbol r}_{DM} = 10^{3} GeV/cc"

set palette defined ( 0 "green", 1 "blue", 2 "red", 3 "orange" )
set key right bottom
set key box width 1.2 height 1 opaque

p "LTheatPlot.dat" u ($1/1.0):($2/1.0):($3/1.0) w p pt 7 ps 2 lc palette notitle,\
"data2.dat" u 1:2 w l lc rgb "black" lw 5 title "{/Symbol s}_{p} = 5 x 10^{-42} cm^{2}",\
"data3.dat" u 1:2 w l lc rgb "black" dashtype 4 lw 5 title "{/Symbol s}_{p} = 10^{-43} cm^{2}",\
"data4.dat" u 1:2 w l lc rgb "black" dashtype 2 lw 5 title "{/Symbol s}_{p} = 5 x 10^{-43} cm^{2}",\
"dataSigmaSat.dat" u 1:2 w l lc rgb "brown" lw 5 title "{/Symbol s}_{N} = {/Symbol s}_{sat} (R)"
