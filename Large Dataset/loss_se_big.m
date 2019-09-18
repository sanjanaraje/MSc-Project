loss_awake_expert = (expertPredictions(:,all(isnan(expertPredictions)==0))-outcomes(1,all(isnan(expertPredictions)==0))).^2;
loss_awake_SE = (SE_predictions(1,all(isnan(expertPredictions)==0)) - outcomes(1,all(isnan(expertPredictions)==0))).^2;

loss_awake_expert1 = ((expertPredictions(1,isnan(expertPredictions(1,:))==0)) - outcomes(1,isnan(expertPredictions(1,:))==0)).^2;
loss_awake_SE1 = (SE_predictions(1,isnan(expertPredictions(1,:))==0)-outcomes(1,isnan(expertPredictions(1,:))==0)).^2;

loss_awake_expert2 = ((expertPredictions(2,isnan(expertPredictions(2,:))==0)) - outcomes(1,isnan(expertPredictions(2,:))==0)).^2;
loss_awake_SE2 = (SE_predictions(1,isnan(expertPredictions(2,:))==0)-outcomes(1,isnan(expertPredictions(2,:))==0)).^2;

loss_awake_expert3 = ((expertPredictions(3,isnan(expertPredictions(3,:))==0)) - outcomes(1,isnan(expertPredictions(3,:))==0)).^2;
loss_awake_SE3 = (SE_predictions(1,isnan(expertPredictions(3,:))==0)-outcomes(1,isnan(expertPredictions(3,:))==0)).^2;

loss_awake_expert4 = ((expertPredictions(4,isnan(expertPredictions(4,:))==0)) - outcomes(1,isnan(expertPredictions(4,:))==0)).^2;
loss_awake_SE4 = (SE_predictions(1,isnan(expertPredictions(4,:))==0)-outcomes(1,isnan(expertPredictions(4,:))==0)).^2;

total_loss_awakeexpert1 = sum(loss_awake_expert1);
total_loss_awakeexpert2 = sum(loss_awake_expert2);
total_loss_awakeexpert3 = sum(loss_awake_expert3);
total_loss_awakeexpert4 = sum(loss_awake_expert4);

total_loss_awakeSE1 = sum(loss_awake_SE1);
total_loss_awakeSE2 = sum(loss_awake_SE2);
total_loss_awakeSE3 = sum(loss_awake_SE3);
total_loss_awakeSE4 = sum(loss_awake_SE4);

excess_loss_awake1 = (total_loss_awakeexpert1-total_loss_awakeSE1);
excess_loss_awake2 = (total_loss_awakeexpert2-total_loss_awakeSE2);
excess_loss_awake3 = (total_loss_awakeexpert3-total_loss_awakeSE3);
excess_loss_awake4 = (total_loss_awakeexpert4-total_loss_awakeSE4);

excess_loss1 = total_loss_expert_SE(1,:)-total_loss_SE;
excess_loss2 = total_loss_expert_SE(2,:)-total_loss_SE;
excess_loss3 = total_loss_expert_SE(3,:)-total_loss_SE;
excess_loss4 = total_loss_expert_SE(4,:)-total_loss_SE;