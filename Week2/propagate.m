function [dw,db,cost] = propagate(w,b,X,Y)
    % Forward Propagation
    A = sigmoid(w'*X + b);
    
    m = size(X,1);
    cost = (-1/m)*(sum(Y.*log(A) + (1-Y).*log(1-A)));
    
    % Backward Propagation
    dw = (1/m)*(X*(A-Y)');
    db = (1/m)*sum(A-Y);
    
end