# Projectile Estimation

This work contains a simple matlab code for predicting the projectile of a particle with initial speed of 10 m/s and a 45 degree angle. We have access to a number of different projectiles of the same partile in the format of x and y coordinate values at different points of time. This codes uses this dataset as the training dataset and predicts the projectile motion of the particle with specified initial velocity and degree using gradient descent.

## Getting Started
You can clone and run the code!

### Prerequisites

This code is implemented in MATLAB.

## Running the code

In order to run the code, you should run *predict_xy* with desired input values. Output is in the form of x and y coordinate values ([t;x;y]) which is returned in a matrix by *predict_xy*. It is also written to "output.csv" file for easy access. To simply run the code with the my input variables, you can simply run *main.m*.

### Arguments

All of the arguments are specified by comments in the code.

### Outputs

- This code will save the projectile motion in format x and y coordinate values in "output.csv" file and it will plot the projectile.  

## Author

* [**Setareh Cohan**](https://github.com/setarehc)

