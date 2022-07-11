set terminal pngcairo dashed enhanced font "Times New Roman, 30" size 1200,1084
set output 'plot21.png'

set logs
set log cb
#set yr [1e-10:1e-4]
set xr [*:*]
#set cbr [1e-5:100]

set xl "M_{DM} [GeV]" 
set yl "{/Symbol s}_p [cm^{2}]" 
set cbl "Q-factor" 

set format y "10^{%L}"
set format x "10^{%L}"
#set format cb "10^{%L}"

set title "{/Symbol r}_{DM} = 10^{4} GeV/cc"

set palette defined ( 0 "green", 1 "blue", 2 "red", 3 "orange" )
#set key right bottom
#set key box width 1.2 height 1 opaque

p "QfactorPlot3.dat" u (10**($2)):(10**($1+2)):3 w p pt 7 ps 1 lc palette notitle


