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
    
    % Iterative solution
    % delta1 = 0;
    % delta2 = 0;

    % for i = 1:m
    %     delta1 = delta1 + (X(i,:)*theta - y(i)) * X(i, 1);
    %     delta2 = delta2 + (X(i,:)*theta - y(i)) * X(i, 2);
    % end

    % theta(1) = theta(1) - alpha/m*delta1;
    % theta(2) = theta(2) - alpha/m*delta2;

    % Vectorization solution
    delta = X' * (X*theta - y);
    theta = theta - alpha/m*delta;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    % printf('cost: %d\n', J_history(iter));
end

end
