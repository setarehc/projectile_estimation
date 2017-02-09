function [ J ] = objective_function( var, X, hypothesis_function)
%definition of objective function in terms of variables(var=[v0x; v0y; Fx; Fy])
    %, X=training data [t;x;y] and hypothesis function
    temp = 0;
    m = size(X,1);
    for i=1:m
        [x,y] = hypothesis_function(var,X(i,1));
        temp = temp + (x - X(i,2))^2 + (y - X(i,3))^2;
    end
    J = temp / m;
end

