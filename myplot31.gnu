set terminal pngcairo dashed enhanced font "Times New Roman, 30" size 1200,1084
set output 'plot34.png'

set log y
#set log cb
set yr [1:]
set xr [:10]

set xl "R [10^{6} m]" 
set yl "L [10^{28} GeV s^{-1}]" 
#set cbl "T [10^{3} K]"
set label "T [10^{3} K]" at 10.1,5e5

set format y "10^{%L}"
#set format x "%f"
#set format cb "10^{%L}" 

set mxtics 4

set label "{/:Bold M_{DM} = 400 MeV" at 7,4e5 font ",20"
set label "{/:Bold {/Symbol r}_{DM} = 10^{3} GeV/cc}" at 7,2e5 font ",20"
set label "{/:Bold {/Symbol s}_p = 10^{-43} cm^2}" at 3,29 rotate by 31 left font ",17" front
set label "{/:Bold {/Symbol s}_p = 10^{-44} cm^2}" at 3.8,6 rotate by 24 left font ",17" front
set label "{/:Bold {/Symbol s}_p = 10^{-42} cm^2}" at 2,90 rotate by 37 left font ",17" front
set label "{/:Bold {/Symbol s}_{int} = {/Symbol s}_{sat} (R)}" at 1.,200 rotate by 41 left font ",17" front


set palette defined ( 0 "green", 1 "blue", 2 "red", 3 "orange" )

set tics front

set colorbox user origin graph 1.02, graph 0 size 0.04, graph 0.9
set rmargin at screen 0.85

p "data3.dat" u 1:2 w l lc rgb "black" dashtype 1 lw 3 notitle ,\
"data3.dat" u 1:2 w filledcu y1=0 lc rgb "#DCDCDC" notitle ,\
"data4.dat" u 1:2 w l lc rgb "black" dashtype 1 lw 3 notitle ,\
"data4.dat" u 1:2 w filledcu y1=0 lc rgb "#D3D3D3" notitle ,\
"data5.dat" u 1:2 w l lc rgb "black" dashtype 1 lw 3 notitle ,\
"data5.dat" u 1:2 w filledcu y1=0 lc rgb "#C0C0C0" notitle ,\
"dataSigmaSat.dat" u 1:2 w l lc rgb "brown" lw 5 notitle ,\
"LTheatPlot.dat" u ($1/1.0):($2/1.0):($3/1.0) w p pt 7 ps 2 lc palette notitle,\
