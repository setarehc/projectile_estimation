function [ x_i, y_i ] = hypothesis_function(var, t_i)
%definition of hypthesis function in terms of variables(var=[v0x; v0y; Fx; Fy])
    %and t_i: returns the x and y of a given time t_i
    w = 1;%weight = 1
    g = 9.8;%gravity = 9.8
    t_i = t_i * 10^(-1);
    x_i = -0.5*(var(3,1)/w)*(t_i)^2 + var(1,1)*t_i;
    y_i = -0.5*(var(4,1)/w + g)*t_i^2 + var(2,1)*t_i;
end

