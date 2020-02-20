%%%
% Create the figure window. First, resize the window to have twice the
% width, and create two subplots.
h = figure;
h.Position(3) = 2*h.Position(3);
ax1 = subplot(1,2,1);
ax2 = subplot(1,2,2);

%%%
% In the left subplot, display the image and classification together.
load cnnmalaria1000;  
im = imread('t1.jpg');   %Read the image
imshow(im);
image(ax1,im)
im = imresize(im,[200,200]);
[label,score] = classify(nnet,im);
title(ax1,{'CNN prediction = ' char(label)});

%%%
% Select the top two predictions by selecting the classes with the highest
% scores.
[~,idx] = sort(score,'descend');
idx = idx(2:-1:1);
classes = nnet.Layers(end).Classes;
classNamesTop = string(classes(idx));
scoreTop = score(idx);

%%%
% Display the top two predictions as a histogram.
bar3(ax2,scoreTop)
xlim(ax2,[0 1])
title(ax2,'Prediction Probability')
xlabel(ax2,'Probability for the two classes') 
yticklabels(ax2,classNamesTop)
ax2.YAxisLocation = 'right';

