path = "F:/Hoang Linh/Nam3/SachThayDinh/New folder/resu/case1/l_12_holes_9"

set terminal pdfcairo size 20cm, 15cm
  set output path."multi.pdf"
  set multiplot
  set grid
#  set origin 0,0
  set multiplot layout 2,2 columnsfirst

#Energie dissipée
#j0=system("cat ".path."J0");
plot path."out.dat" u ($1/j0) w l t "J/J0" lw 3
#plot path."out.dat" u 1 w l t "J" lw 3
unset format
#L
  plot path."/out.dat" u 2 w l t "Augmented Lagrangian"  lw 3

#Volume périmètre
#volc=system("cat ".path."voltarget");
plot path."out.dat" u 3 w l t "V" lw 3 
#, path."out.dat" u (volc+0*$3) w l t "Vtarget"  lw 3

  #
  # unset logscale
  # plot path."out.dat" u 4 w l t "Lagrange multiplier"  lw 3
  # unset multiplot

unset multiplot
set logscale y
set grid
plot path."out.dat" u 4 w lp