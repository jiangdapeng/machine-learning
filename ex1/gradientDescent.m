function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
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
	n = length(theta);
	%{
	%solution 1:
	for i=1:n
		sum = 0;
		for j=1:m
			sum = sum + X(i,j);
		end
		sum = sum * (X(i,:)*theta);
		theta(i) = theta(i)-alpha* 1/m * sum;
	end 
	%}
	%solution 2
	theta = theta - alpha * 1/m * (sum(repmat(X*theta-y,1,n) .* X))';






    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
