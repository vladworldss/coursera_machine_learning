function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    % size(X)= 97x2
    % size(thetha) = 2x1 (vector)
    % for matrices A, B multiplication need A_num_col == B_nub_row
    
    h = X*theta;  # hypothesis; size(h) = 97x1 (vector)
    dev = h-y;    # deviation; size(dev) = 97x1 (vector)
    
    % for each iteration we need to theta_0 : sum of deviations
    %                               theta_1 : sum of deviations*x
    % transpose of X
    % size(X') = 2 x 97
    % size(X'*dev) = (2x97)*(91x1) = (2x1)
    
    gradient = alpha*(1/m)*(X'*dev); # update the gradient
    
    % (2x1)-(2x1) 
    theta = theta-gradient;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
