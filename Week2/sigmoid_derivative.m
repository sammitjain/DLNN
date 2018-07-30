function ds = sigmoid_derivative(x)
    s = sigmoid(x);
    ds = s*(1-s);
end