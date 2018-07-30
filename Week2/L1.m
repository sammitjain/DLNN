function loss = L1(yhat,y)
    loss = sum(abs(yhat-y));
end