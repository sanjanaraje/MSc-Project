function predictions = FS( expertPredictions,outcomes )
alpha = 0.1;
alphamin = 1-alpha;
[N T] = size(expertPredictions);
weights = ones(N,1)/N;
predictions = [];
loss_expert = [];
eta = 2;
g_sum = [];
g = [];
brier_output = [0,1];
for t = 1:T
g_sum =sum(weights(:,1).*exp(-eta.*(expertPredictions(:,t)-brier_output).^2));
g = (-1/eta)*log(g_sum);
predictions(1,t) = 0.5-(0.5*(g(2)-g(1)));  
loss_expert = (expertPredictions(:,t)-outcomes(t)).^2;
weights = weights.*exp(-eta.*loss_expert);
s = sum(weights)-weights(:);
weights = alphamin*weights+((alpha/(N-1)).*s);
weights = weights/sum(weights);

end

end
