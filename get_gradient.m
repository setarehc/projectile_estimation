function [ grad_val ] = get_gradient(var, X, hypothesis_function)
% Calculates funcion's(hypothesis_function) gradient with respect to current
    % variables(var) and training data(X)
    w = 1; % weight = 1
    temp_v0x = 0;temp_v0y = 0; temp_Fx = 0;temp_Fy = 0;
    m = size(X,1);
    for i=1:m
        ti = X(i,1)*10^(-1);
        xi = X(i,2);
        yi = X(i,3);
        [x,y] = hypothesis_function(var, ti);
        A = x - xi;
        B = y - yi;
        temp_v0x = temp_v0x + 2*A*ti;
        temp_v0y = temp_v0y + 2*B*ti; 
        temp_Fx = temp_Fx - A*ti^2/w;
        temp_Fy = temp_Fy - B*ti^2/w ;
    end
    grad_val = [temp_v0x/m; temp_v0y/m; temp_Fx/m; temp_Fy/m];
end

