function [w,b,dw,db,costs] = optimize(w,b,X,Y,num_iterations,learning_rate,print_cost)
   costs = [];
   
   for i=1:num_iterations
       [dw,db,cost] = propagate(w,b,X,Y);

       w = w - learning_rate*dw;
       b = b - learning_rate*db;
       
       if(mod(i,100)==0)
           costs = [costs cost];
       end
       
       if(print_cost && mod(i,100)==0)
           fprintf('Cost after iteration %d: %f\n',i,cost);
       end
       
   end
   
   
end