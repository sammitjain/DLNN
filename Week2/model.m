%% Main model script:
% How to run this: 
% load datasets.mat
%[costs,Y_prediction_test,Y_prediction_train,w,b,learning_rate,num_iterations] = model(train_set_x,train_set_y,test_set_x,test_set_y,2000,0.005,true);
function [costs,Y_prediction_test,Y_prediction_train,w,b,learning_rate,num_iterations] = model(X_train,Y_train,X_test,Y_test,num_iterations,learning_rate,print_cost)
    
    % A fix for running this in MATLAB is to cast these sets as double
    X_train = double(X_train);
    Y_train = double(Y_train);
    X_test = double(X_test);
    Y_test = double(Y_test);
    
    [w,b] = initialize_with_zeros(size(X_train,1));
    [w,b,dw,db,costs] = optimize(w,b,X_train,Y_train,num_iterations,learning_rate,print_cost);
    
    Y_prediction_test = m_predict(w,b,X_test);
    Y_prediction_train = m_predict(w,b,X_train);
    
    train_accuracy = (100-100*mean(abs(Y_prediction_train - Y_train)))
    test_accuracy = (100-100*mean(abs(Y_prediction_test - Y_test)))
    
    disp(["Train Accuracy: " num2str(train_accuracy)]);
    disp(["Test Accuracy: " num2str(test_accuracy)]);
    
end