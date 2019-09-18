figure
plot(1:100,cumsum(loss_expert_AA(1,:)),1:100,cumsum(loss_expert_AA(2,:)),1:100,cumsum(loss_expert_AA(3,:)),1:100,cumsum(loss_expert_AA(4,:)),1:100,cumsum(loss_AA))
xlabel("time")
ylabel("cumulative loss")
legend('E1','E2','E3','E4','AA')
figure
plot(1:100,cumsum(loss_expert_AA(1,:)-(loss_AA)),1:100,cumsum(loss_expert_AA(2,:)-(loss_AA)),1:100,cumsum(loss_expert_AA(3,:)-(loss_AA)),1:100,cumsum(loss_expert_AA(4,:)-(loss_AA)),[1,100],[-(log(4)/2),-(log(4)/2)])
ylim([-1 1])
xlabel("time")
ylabel(" excess loss")
legend('E1-AA','E2-AA','E3-AA','E4-AA','threshold')
figure
plot(1:300,cumsum(loss_expert_SE(1,:)),1:300,cumsum(loss_expert_SE(2,:)),1:300,cumsum(loss_expert_SE(3,:)),1:300,cumsum(loss_expert_SE(4,:)),1:300,cumsum(loss_SE))
xlabel("time")
ylabel("cumulative loss")
legend('E1','E2','E3','E4','SE')
figure
plot(201:300,cumsum(loss_expert_SE(1,201:300)),201:300,cumsum(loss_expert_SE(2,201:300)),201:300,cumsum(loss_expert_SE(3,201:300)),201:300,cumsum(loss_expert_SE(4,201:300)),201:300,cumsum(loss_SE(:,201:300)))
xlabel("time")
ylabel("cumulative loss")
legend('E1','E2','E3','E4','SE(aa)')



threshold = 1/2*(log(1/4));
figure
plot(1:length(loss_awake_expert1),cumsum(loss_awake_expert1 - loss_awake_SE1),[1,length(loss_awake_expert1)],[threshold,threshold]);
figure
plot(1:length(loss_awake_expert2),cumsum(loss_awake_expert2 - loss_awake_SE2),[1,length(loss_awake_expert2)],[threshold,threshold]);
figure
plot(1:length(loss_awake_expert3),cumsum(loss_awake_expert3 - loss_awake_SE3),[1,length(loss_awake_expert3)],[threshold,threshold]);
figure
plot(1:length(loss_awake_expert4),cumsum(loss_awake_expert4 - loss_awake_SE4),[1,length(loss_awake_expert4)],[threshold,threshold]);

