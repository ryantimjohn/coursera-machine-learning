function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%x1 = [1 2 1]; x2 = [0 4 -1];
%Cparams = [.01 .03 .1 .3 1 3 10 30];
%sigmaparams = [.01 .03 .1 .3 1 3 10 30];
%possibleCombinations = length(Cparams) * length(sigmaparams);
%combinationsTable = zeros(possibleCombinations, 3);
%counter = 1;

%for i = 1:length(Cparams);
%  Ctest = Cparams(i);
%  for i = 1:length(sigmaparams);
%    sigmatest = sigmaparams(i);
%    combinationsTable(counter, 1) = Ctest;
%    combinationsTable(counter, 2) = sigmatest;
%    model = svmTrain(X, y, Ctest, @(x1, x2) gaussianKernel(x1, x2, sigmatest));
%    predictions = svmPredict(model, Xval);
%    predictionerror = mean(double(predictions ~= yval));
%    combinationsTable(counter, 3) = predictionerror;
%    counter += 1;
%  endfor;
%endfor;

%save combinationsTable.mat combinationsTable

%[minError, minErrorIndex] = min(combinationsTable(:,3));

%[C, sigma, chosenError] = combinationsTable(minErrorIndex,:);

C = 1
sigma = .1


% =========================================================================

end
