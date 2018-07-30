function loss = L2(yhat,y)
    loss = (yhat-y)*(yhat-y)';
end