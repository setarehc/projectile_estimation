%read training data
X = csvread('projectiles.csv');

[var,error] = gradientDescent( [5;6;0;0], 30, 0.012, @objective_function, X, @get_gradient, @hypothesis_function);