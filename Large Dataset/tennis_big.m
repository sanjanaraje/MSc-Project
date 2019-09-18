choice = menu('Select file','tennis without NaN', 'tennis with NaN (SE)');
switch choice
    case 1
        %odds = importfile_exclude_NaN('tennis_14_to_18.xlsx','Sheet1','Y2:AF11779');
        load('odds_no_nan');
        odds_inv = 1./odds_no_nan;     
        expertPredictions = odds_inv';
        [N, T] = size(expertPredictions);
        outcomes = ones(1,T);
        choice = menu('Select algorithm to run','Aggregating Algorithm', 'Fixed Share', 'Naive Average Method');
        switch choice
            case 1
                %% Aggregating Algorithm Brier Square Loss
                AA_predictions = AA(expertPredictions,outcomes);
                loss_AA = loss(AA_predictions,outcomes);
                loss_expert_AA = loss(expertPredictions,outcomes);
                total_loss_AA = total_loss_l(loss_AA);
                total_loss_expert = total_loss_e(loss_expert_AA);
                
            case 2
                %% Fixed Share
                predictions = FS(expertPredictions,outcomes);
                loss_FS = (predictions-outcomes).^2;
                loss_expert_FS = (expertPredictions-outcomes).^2;
                total_loss_FS = total_loss_l(loss_FS);
                total_loss_expert = total_loss_e(loss_expert_FS);
                
            case 3
                %% Naive Average Method
                predictions_NA = NA(expertPredictions);
                loss_NA = loss(predictions_NA,outcomes);
                loss_expert_NA = loss(expertPredictions,outcomes);
                total_loss_NA = total_loss_l(loss_NA);
                total_loss_expert = total_loss_e(loss_expert_NA);
        end
    case 2
        %odds = importfile('tennis_14_to_18.xlsx','Sheet1','Y2:AF11779');
        load('odds')
        [n , ~] = size(odds1);
        odds_inv = 1./odds1;
        expertPredictions = odds_inv';
        [N, T] = size(expertPredictions);
        outcomes = ones(1,T);
        
        %% Sleeping Experts
        [SE_predictions,newexpertPredictions] = SE(expertPredictions,outcomes);
        loss_l_SE = (SE_predictions-outcomes).^2;
        loss_expert_SE = (newexpertPredictions-outcomes).^2;
                
end
