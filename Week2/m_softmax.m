function s = m_softmax(x)
    x_exp = exp(x);
    x_sum = sum(x_exp,2);
    s = x_exp./x_sum;
end