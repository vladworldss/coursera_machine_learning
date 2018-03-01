% functrion plots on different windows

function [] = plot_different_graph()
  
  wt = [0:0.01:0.98];
  
  y1 = sin(2*pi*4*wt);
  y2 = cos(2*pi*4*wt);
  
  figure(1); plot(wt, y1);
  figure(2); plot(wt, y2);
