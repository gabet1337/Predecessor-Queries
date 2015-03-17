#!/usr/bin/gnuplot

set terminal pngcairo enhanced font 'Verdana,15'
set output 'test.png'
set title "L2 Cache Miss Ratio"
set xlabel "input size"
set ylabel "Miss Ratio (misses/total)"
set xtics autofreq
set grid ytics lc rgb "#bbbbbb" lw 1 lt 0
set grid xtics lc rgb "#bbbbbb" lw 1 lt 0

set logscale x 2
set format x "2^{%L}"

set key left top

plot "pred_l2_lb.dat" title 'lower bound', \
     "pred_l2_bs.dat" title 'binary search', \
     "pred_l2_dfs.dat" title 'dfs', \
     "pred_l2_bfs.dat" title 'bfs', \
     "pred_l2_inorder.dat" title 'inorder'
