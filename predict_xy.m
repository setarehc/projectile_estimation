function [ trajectory ] = predict_xy( init_v, init_ang, init_var, iter_num, alpha,projectile_count)
% This function inputs initial velocity and angle of the projectile and a 
    % value to start gradient descent from(init_var), number of
    % iterations on gradient descent(iter_num) and step size of the gradient
    % descent(alpha), and it predicts projectile's movement. 
    % Output is a n by 3 matrix in [t;x;y] format which is also writen to
    % to a .csv file.
    % projectile_count says how many rows of the projectile's data user
    % will be used.
    X = csvread('projectiles.csv');
    j = 2;
    old_j = 2;
    avg_var = [0;0;0;0];
    while j<=projectile_count % number of projectiles
        projectile_data = zeros(1,3);
        while (X(j,1) ~= 0)
            j = j + 1;
        end
        projectile_data = X([old_j:j-1],:)
        [var,~] = gradientDescent( init_var, iter_num, alpha, @objective_function, projectile_data, @get_gradient, @hypothesis_function);
        avg_var = avg_var + var;
        old_j = j;
        j = j+1;
    end
    avg_var = avg_var/100; % over 100 projectiles
    varr = [init_v*cos(init_ang);init_v*cos(init_ang);avg_var(3,1);avg_var(4,1)];
    time_index = 1;
    [x,y] = hypothesis_function(varr, time_index);
    while ((time_index<100) && (y>=0))
        trajectory(time_index,:) = [time_index,x,y];
        time_index = time_index + 1;
        [x,y] = hypothesis_function(varr, time_index); 
    end
    trajectory = [[0,0,0];trajectory];
    csvwrite('output.csv',trajectory);
end

