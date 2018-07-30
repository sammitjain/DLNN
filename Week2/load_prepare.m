%% Load and Prepare the .h5 files

% Source: https://mashimo.wordpress.com/2017/10/19/cat-or-not-cat/

train_set_x_orig = h5read('train_catvnoncat.h5','/train_set_x');
train_set_y = h5read('train_catvnoncat.h5','/train_set_y');

test_set_x_orig = h5read('test_catvnoncat.h5','/test_set_x');
test_set_y = h5read('test_catvnoncat.h5','/test_set_y');

%% Check the size of the datasets
%train_set_size = size(train_set_x_orig);

% It comes out to [3 64 64 209]
% We want it to actually be [R G B image_index]
% This suggests there's some reshaping to be done

%% Re-shape the dataset
train_set_x_orig = permute(train_set_x_orig,[3 2 1 4]);
test_set_x_orig = permute(test_set_x_orig,[3 2 1 4]);

%% Show sample image
% Note: The course example is image index 25
% In MATLAB, that translates to image number 26

% Change img_no to check different images
img_no = 26;
imshow(train_set_x_orig(:,:,:,img_no));

if(train_set_y(img_no)==1)
    s = sprintf('1: This is a cat');
else
    s = sprintf('0: This is NOT a cat');
end

% Added title to display label
title(s);


