function [y_train, y_test] = train_test(y, k, ratio,pixel)
%SPLIT_TRAIN_TEST 分割训练集和测试集
% 参数X是数据矩阵 y是对应类标签 k是类别个数 ratio是训练集的比例
% 返回训练集X_train和对应的类标签y_train 测试集X_test和对应的类标签y_test
m = size(y, 1);
y_labels = unique(y); % 去重，k应该等于length(y_labels)
y_labels(y_labels==-1)=[];
y_labels(y_labels==0)=[];
d = [1:m]';
y_train = zeros(size(y));
y_test = zeros(size(y));
for i = 1:k
comm_i = find(y == y_labels(i));
if isempty(comm_i) % 如果该类别在数据集中不存在
continue;
end
size_comm_i = length(comm_i);
rp = randperm(size_comm_i); % random permutation
if pixel==0
    rp_ratio = rp(1:floor(size_comm_i * ratio));
else
    rp_ratio = rp(1:pixel);
end
ind = comm_i(rp_ratio);
y_train(ind, :) =  y(ind, :);
d = setdiff(d, ind);
end
y_test(d, :) = y(d, :);
y_test(y_test==-1) = 0;
% end