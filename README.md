# numerical-derivative

This repository defines a function `numerical_derivative` and an example

## `numerical_derivative` Function

This MATLAB function approximates the derivative of a real-valued function using the **central difference method**.

### 📥 Inputs

- `f`: A function handle, e.g., `@(x) sin(x)`, representing the function to differentiate.
- `x`: A vector of x-values where the derivative should be estimated.

### ⚙️ How It Works

For each point `x_i` in the vector `x`, the function uses the central difference formula:

```
f'(x_i) ≈ [f(x_i + h) - f(x_i - h)] / (2h)
```

where `h` is a small number (e.g., `1e-5`). This gives a good approximation of the derivative, especially for smooth functions. Central difference is more accurate than simple forward or backward difference methods.

### 📤 Output

- A vector `dydx` of the same length as `x`, containing the estimated derivative values at each point.

---

## 🚀 Example Usage

```matlab
f = @(x) sin(x);
x = linspace(0, 2*pi, 100);
d = numerical_derivative(f, x);

plot(x, d, 'r', x, cos(x), 'b--');
legend('Numerical Derivative', 'True Derivative');
title('Derivative of sin(x)');
```

This compares the numerical derivative of `sin(x)` to the exact analytical derivative `cos(x)`.

---

## 🧠 Notes

- You can adjust the value of `h` for better precision or stability depending on your use case.
- Works best for smooth, continuous functions.