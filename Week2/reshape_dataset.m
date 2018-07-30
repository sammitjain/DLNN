%% This script flattens the images

%% Load the datasets
load datasets.mat

%% Reshape the images using reshape

trainSize = size(train_set_x_orig);
train_set_x_flatten = reshape(train_set_x_orig,[prod(trainSize(1:3)) trainSize(4)]);

testSize = size(test_set_x_orig);
test_set_x_flatten = reshape(test_set_x_orig,[prod(testSize(1:3)) testSize(4)]);


train_set_y = train_set_y';
test_set_y = test_set_y';

%% Standardize the dataset

train_set_x = train_set_x_flatten/255;
test_set_x = test_set_x_flatten/255;

%% Add these changes to datasets.mat
