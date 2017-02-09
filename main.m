%read training data
trajectory = predict_xy( 10, pi/4, [1;1;1;1], 15, 0.012,30);
plot(trajectory(:,2),trajectory(:,3));
