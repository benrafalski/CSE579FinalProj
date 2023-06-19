% case(cid, type, effort, damage, postc, payment)
case(8, a, 480, 2500, 4000, 240).
% referee(rid, type, max_workload, prev_workload, prev_payment)
referee(16, i, 480, 6000, 0).
referee(17, e, 480, 6000, 4000).
referee(18, e, 480, 6000, 4000).

% prefType(rid, caset, pref)
prefType(16, a, 0).
prefType(17, a, 3).
prefType(18, a, 3).
% prefRegion(rid, postc, pref)
prefRegion(16,4000,2).
prefRegion(17,4000,3).
prefRegion(18,4000,2).
% externalMaxDamage(damage)
externalMaxDamage(2500).

% expected result (optimum): assign(8, 17)