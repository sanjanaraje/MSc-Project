figure
plot(1:T, cumsum(loss_expert,2)-cumsum(loss_l),[1,T],[-(log(4)/2),-(log(4)/2)])
xlabel("time")
ylabel(" excess loss")
legend('E1-AA','E2-AA','E3-AA','E4-AA','threshold')

figure
plot(1:T, cumsum(loss_expert_FS,2)-cumsum(loss_l_FS),[1,T],[-(log(4)/2),-(log(4)/2)])
xlabel("time")
ylabel(" excess loss")
legend('E1-FS','E2-FS','E3-FS','E4-FS','threshold')

figure
subplot(2,2,1)
plot(1:length(loss_awake_expert1),cumsum(loss_awake_expert1 - loss_awake_SE1),[1,length(loss_awake_expert1)],[-(log(4)/2),-(log(4)/2)])
xlabel("time")
ylabel("excess loss 1")
legend('awake E1-SE','threshold')
subplot(2,2,2)
plot(1:length(loss_awake_expert2),cumsum(loss_awake_expert2 - loss_awake_SE2),[1,length(loss_awake_expert2)],[-(log(4)/2),-(log(4)/2)])
xlabel("time")
ylabel("excess loss 2")
legend('awake E2-SE','threshold')
subplot(2,2,3)
plot(1:length(loss_awake_expert3),cumsum(loss_awake_expert3 - loss_awake_SE3),[1,length(loss_awake_expert3)],[-(log(4)/2),-(log(4)/2)])
xlabel("time")
ylabel("excess loss 3")
legend('awake E3-SE','threshold')
subplot(2,2,4)
plot(1:length(loss_awake_expert4),cumsum(loss_awake_expert4 - loss_awake_SE4),[1,length(loss_awake_expert4)],[-(log(4)/2),-(log(4)/2)])
xlabel("time")
ylabel("excess loss 4")
legend('awake E4-SE','threshold')

plot(1:T, cumsum(loss_expert_SE,2)-cumsum(loss_l_SE),[1,T],[-(log(4)/2),-(log(4)/2)])
xlabel("time")
ylabel(" excess loss")
legend('E1-SE','E2-SE','E3-SE','E4-SE','threshold')

