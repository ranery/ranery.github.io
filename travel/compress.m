clear; clc;
fileFolder=fullfile('./Hermann_Park');
dirOutput=dir(fullfile(fileFolder,'*.jpg'));
fileNames={dirOutput.name}';
[fileNames,INDEX] = sort_nat(fileNames);
num_file = length(fileNames);
for i = 1 : num_file
    i
    cd ./Hermann_Park
    file_name = fileNames{i};
    file = imread(file_name);           % rgb
    %file_name = ['memo_',num2str(i)];
    file_name = strcat(extractBefore(file_name, '.jpg'), '.png');
    %cd J:\HaoranYou\memoir\memo
    imwrite(file, file_name);
end