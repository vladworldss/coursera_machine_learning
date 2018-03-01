function [] = plot_joint_graph(wt)
  y1 = sin(2*pi*4*wt);
  y2 = cos(2*pi*4*wt);

  subplot(2,1,1); % Divides plot a 1x2 grid, access first elemant
  plot(wt, y1);
  xlabel("wt");
  ylabel("value");
  legend('cos');
  title('sin graph');
  axis([0 1 -1 1]);
  
  subplot(2,1,2); % Divides plot a 1x2 grid, access second elemant
  plot(wt, y2);
  
  xlabel("wt");
  ylabel("value");
  legend('cos');
  title('cos graph');
  axis([0 1 -1 1]);
 