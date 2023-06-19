% case(7, b, 25, 2500, 4000, 160).
case(7, b, 250, 2500, 4000, 160).


referee(13, i, 480, 6000, 0).
referee(14, i, 480, 450, 0).
referee(15, e, 480, 500, 270).

prefType(13, b, 3).
prefType(14, b, 3).
prefType(15, b, 3).

prefRegion(13,4000,2).
prefRegion(14,4000,2).
prefRegion(15,4000,3).

externalMaxDamage(1500).

% % expected result (optimum): assign(7, 14)

% case(cid, type, effort, damage, postc, payment)
% case(11, a, 90, 10000, 3033, 65).
% case(12, b, 90, 5000, 3033, 65).
% case(13, a, 90, 5000, 3034, 65).
% % referee(rid, type, max_workload, prev_workload, prev_payment)
% referee(23, i, 480, 3000, 0).
% referee(24, i, 480, 3000, 0).
% referee(25, e, 360, 1000, 1000).
% referee(26, e, 120, 2500, 1700).
% % prefType(rid, caset, pref)
% prefType(23, a, 2).
% prefType(23, b, 2).
% prefType(24, a, 1).
% prefType(24, b, 3).
% prefType(25, a, 1).
% prefType(25, b, 3).
% prefType(26, a, 3).
% prefType(26, b, 0).
% % prefRegion(rid, postc, pref)
% prefRegion(23, 3033, 1).
% prefRegion(23, 3034, 3).
% prefRegion(24, 3033, 2).
% prefRegion(24, 3034, 1).
% prefRegion(25, 3033, 2).
% prefRegion(25, 3034, 1).
% prefRegion(26, 3033, 3).
% prefRegion(26, 3034, 1).
% % externalMaxDamage(damage)
% externalMaxDamage(10000).

% assign(11, 25)
% assign(12, 25)
% assign(13, 25)