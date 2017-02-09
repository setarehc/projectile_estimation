function [ output_var, err ] = gradientDescent( var, iter_num, alpha, objective_function, X, get_gradient, hypothesis_function)
%find variables such that error of objective function is minimized
    %var = [v0; theta; Fx; Fy], iter_num = maximum number of iterations, alpha =
        %step size, objective_function = objective function to be minimized,
        %X=training data[t;x;y]
    %output_var = ultimate variables found by gradientDescent, err = vector
        %containing error of each iteration
    err = zeros(iter_num, 1);
    for iter=1:iter_num
        temp_alpha = alpha;
        g = get_gradient(var, X, hypothesis_function);
        temp = var - temp_alpha * g;
        while objective_function(temp, X, hypothesis_function)>=objective_function(var, X, hypothesis_function)
            temp_alpha = temp_alpha/2;
            g = get_gradient(var, X, hypothesis_function);
            temp = var - temp_alpha * g;
        end
        %iter
        %g
        %temp_alpha
        var = temp; 
        err(iter,1) = objective_function(var, X, hypothesis_function);
    end
    output_var = var;
end

