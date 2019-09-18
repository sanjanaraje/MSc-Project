function predictions = NA(expertPredictions)
[N T] = size(expertPredictions);
for t = 1:T
    predictions(1,t) = sum(expertPredictions(:,t))/N;
end
