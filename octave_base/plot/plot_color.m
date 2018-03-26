% function plots color map
function [] = plot_color()
  
  A = magic(5);
  
  subplot(2,1,1);
  imagesc(A);

  subplot(2,1,2);
  imagesc(A), colorbar, colormap gray;
