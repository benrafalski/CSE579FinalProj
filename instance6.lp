case(8, a, 90, 5000, 3033, 65).
case(9, a, 240, 5000, 3033, 160).
case(10, a, 40, 5000, 3033, 25).

referee(19, i, 360, 2000, 0).
referee(20, i, 600, 6000, 0).
referee(21, e, 480, 2000, 1200).
referee(22, e, 480, 6000, 4000).

prefType(19, a, 3).
prefType(20, a, 1).
prefType(21, a, 2).
prefType(22, a, 3).
prefRegion(19, 3033,3).
prefRegion(20, 3033,1).
prefRegion(21, 3033,3).
prefRegion(22, 3033,3).
externalMaxDamage(10000).
% assignment:
% assign(8, 19)
% assign(9, 19)
% assign(10, 21)

% assign(8,19) assign(9,19) assign(10,21) sum_hours(740) sum_payment(500)
% Optimization: 1 -500 -740 -5 -3


% hours
% 19 = 90+240 = 330
% 21 = 40

% payment
% 19 = 65+160 = 225
% 21 = 25 
