%% The houston
% load('C:\Users\20210426\Desktop\dataset\Houston 2013\Houston 2012.mat')
% gt = testlabels+trainlabels;
% max(max(gt))
% min(min(gt))
% k=15;
% gt_ = reshape(gt,size(gt, 1)*size(gt, 2),1);
% y = gt_;
% ratio=0;
% pixel=20;
% [y_train, y_test] = train_test(y, k, ratio,pixel);
% train_data = reshape(y_train,size(gt, 1),size(gt, 2));
% test_data = reshape(y_test,size(gt, 1),size(gt, 2));
% save('train_test_gt_1.mat','train_data','test_data')
%% The muufl
% load('C:\Users\20210426\Desktop\dataset\Muufl\gt.mat')
% max(max(gt))
% min(min(gt))
% k=11;
% gt_ = reshape(gt,size(gt, 1)*size(gt, 2),1);
% y = gt_;
% ratio=0;
% pixel=20;
% [y_train, y_test] = train_test(y, k, ratio,pixel);
% train_data = reshape(y_train,size(gt, 1),size(gt, 2));
% test_data = reshape(y_test,size(gt, 1),size(gt, 2));
% save('train_test_gt_1.mat','train_data','test_data')
%% augsburg
load('C:\Users\20210426\Desktop\dataset\Augsburg\mask_test.mat')
load('C:\Users\20210426\Desktop\dataset\Augsburg\mask_train.mat')
gt = mask_test+mask_train;
max(max(gt))
min(min(gt))
k=7;
gt_ = reshape(gt,size(gt, 1)*size(gt, 2),1);
y = gt_;
ratio=0.05;
pixel=0;
[y_train, y_test] = train_test(y, k, ratio,pixel);
train_data = reshape(y_train,size(gt, 1),size(gt, 2));
test_data = reshape(y_test,size(gt, 1),size(gt, 2));
save('train_test_gt_1.mat','train_data','test_data')
