function idx = findClosestCentroids(X, initial_centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K

K = size(initial_centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

m = size(X,1)

distances = zeros(m,K)

for i = 1:K
    d = bsxfun(@minus, X, initial_centroids(i,:))
    distances(:,i) = (sum(d.^2,2)).^(0.5)
    
end

[~,idx] = min(distances,[],2)

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

%for j = 1:m
%    for k = 1:K
%     distances(j,k) = ((X(j,1) - initial_centroids(k,1))^2 + (X(j,2) - initial_centroids(k,2))^2)
%     [~,idx(j)] = min(distances(j,:))
%    end
%end

% =============================================================

%end

