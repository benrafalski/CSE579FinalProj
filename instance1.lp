% case to be handled
% case(cid, type, effort, damage, postc, payment)
% type = passenger car, truck
% effort = num of minutes to resolve the case
% damage = amount of damage
% postc = postal code of location
% payment = how much to pay external employees
case(4, c, 90, 3000, 2000, 90).

% referees in the instance
% referee(rid, type, max_workload, prev_workload, prev_payment)
% type = internal or external
% max_workload = [0,720]
% prev_workload = sum of efforts so far
% prev_payment = sum of payments for external refs
referee(4, i, 480, 220, 0).
referee(5, i, 360, 140, 0).
referee(6, e, 480, 40, 700).

% preferences for the type of case
% prefType(rid, caset, pref)
% pref =  [0,3]
% 0 means this ref cant take this case type
% if not pref is defined then default is 0
prefType(4, c, 0).
prefType(5, c, 2).
prefType(6, c, 3).

% preferences for the regions
% prefRegion(rid, postc, pref)
% pref = [0,3]
prefRegion(4,2000,3).
prefRegion(5,2000,2).
prefRegion(6,2000,2).

% threshold for max damage
% if the damage is less than 1500 then use an internal referee
% externalMaxDamage(damage)
externalMaxDamage(1500).

% expected result (optimum): assign(4, 5)