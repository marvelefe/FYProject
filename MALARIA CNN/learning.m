%Load the input images for training from the datastore
imagepath = fullfile('myImages');
imds = imageDatastore(imagepath, 'IncludeSubfolders',true,'LabelSource','FolderNames');

%Split inputs into training and validation sets(70% and 30% respectively)
[trainDS,valDS] = splitEachLabel(imds,0.7,0.3, 'randomized');

%Specify the training parameters like learnrate, batchsize, e.t.c.
opts = trainingOptions('sgdm', 'InitialLearnRate', 0.001,...
    'ValidationData', valDS,...
    'Plots','training-progress',...
    'MiniBatchSize', 24,...
    'ValidationPatience', 3, 'ExecutionEnvironment','cpu');

%Train the network
nnet = trainNetwork(trainDS, cnnmalaria, opts);


