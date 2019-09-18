load('odds.mat');
odds_inv = 1./odds1;
expertPredictions = odds_inv';
[r1,c1] = find(isnan(expertPredictions)==1);
c1 = unique(c1);
train(:,1:200) = expertPredictions(:,c1(1:200));
[r2,c2] = find(all(isnan(expertPredictions)==0));
c2 = unique(c2);
a = expertPredictions(:,c2(1:100));
train(:,201:300) = a;
[N, T] = size(train);
outcomes = ones(1,T);

choice = menu('Select algorithm to run','Aggregating Algorithm', 'Fixed Share', 'Sleeping Experts','Naive Average Method' );
switch choice
    case 1
        %% Aggregating Algorithm Brier Square Loss
        AA_predictions = AA(a,outcomes(1:length(a)));
        loss_AA = loss(AA_predictions,outcomes(1:length(a)));
        loss_expert_AA = loss(a,outcomes(1:length(a)));
        total_loss_AA = total_loss_l(loss_AA);
        total_loss_expert = total_loss_e(loss_expert_AA);
    case 2
        %% Fixed Share
        FS_predictions = FS(a,outcomes);
        loss_FS = loss(FS_predictions,outcomes(1:length(a)));
        loss_expert_FS = loss(a,outcomes(1:length(a)));
        total_loss_FS = total_loss_l(loss_FS);
        total_loss_expert = total_loss_e(loss_expert_FS);
    case 3
        %% Sleeping Experts
        [SE_predictions,newexpertPredictions] = SE(train,outcomes);
        loss_SE = loss(SE_predictions,outcomes);%this is a vector of loss of learner SE
        loss_expert_SE = loss(newexpertPredictions,outcomes);% new expert loss 
        total_loss_SE = sum(loss_SE);%total loss of learner over 300 steps
        total_loss_expert = sum(loss_expert_SE,2); % for awake loss run script loss_se
        total_loss_se_a = sum(loss_SE(:,201:300)); %this is the loss over the subset 'a'
    case 4
        %% Naive Average Method
        NA_predictions = NA(a);
        loss_NA = loss(NA_predictions,outcomes(1:length(a)));
        loss_expert_NA = loss(a,outcomes(1:length(a)));
        total_loss_NA = total_loss_l(loss_NA);
        total_loss_expert = total_loss_e(loss_expert_NA);
end