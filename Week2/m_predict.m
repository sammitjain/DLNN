function Y_prediction = m_predict(w,b,X)
    m = size(X,2);
    
    Y_prediction = zeros(1,m);
    
    w = reshape(w,[size(X,1) 1]);
    
    A = sigmoid(w'*X+b);
    
    for i = 1:size(A,2)
        if A(1,i)>0.5
            Y_prediction(1,i) = 1;
        else
            Y_prediction(1,i)=0;
        end
    end
end