function [SE_predictions,newexpertPredictions] = SE( expertPredictions,outcomes )
[N T] = size(expertPredictions);
weights = ones(N,1)/N;
SE_predictions = zeros(1,T);
loss_expert = [];
eta = 2;
g_sum = [];
g = [];
brier_output = [0,1];

for t = 1:T
    
    weights_awake = weights(isnan(expertPredictions(:,t))==0,1);
    weights_awake = weights_awake./sum(weights_awake);
    g_sum = sum(weights_awake.*exp(-eta.*((expertPredictions(isnan(expertPredictions(:,t))==0,t))-brier_output).^2),1);
    g = (-1/eta)*log(g_sum);
    SE_predictions(1,t) = 0.5-(0.5*(g(2)-g(1)));
    expertPredictions(isnan(expertPredictions(:,t))==1,t) = SE_predictions(1,t);
    newexpertPredictions(:,t) =  expertPredictions(:,t);
    loss_expert_SE(:,t) = (expertPredictions(:,t)-outcomes(t)).^2;
    weights = weights.*exp(-eta.*loss_expert_SE(:,t));
    weights = weights./sum(weights);
    
end

end




