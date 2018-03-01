%
% function plots sin and cos graphics on same figure
%
function [] = plot_sin_cos()
  
  wt = [0:0.01:0.98];
  
  y1 = sin(2*pi*4*wt);
  y2 = cos(2*pi*4*wt);
  
  % First way
  figure(1);
  plot(wt', [y1', y2']); % alternative way
  xlabel("wt");
  ylabel("value");
  legend('sin', 'cos');
  title('sin cos graph');

  % Second way
  
  figure(2);
  hold on;
  
  plot(wt, y1, 'b');
  plot(wt, y2, 'r');

  xlabel("wt");
  ylabel("value");
  legend('sin', 'cos');
  title('sin cos graph');
