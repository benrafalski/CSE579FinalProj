% Hard Constraints
:- assign(CID, RID), case(CID, _, _, _, POSTC, _), referee(RID, _, _, _, _), prefRegion(RID, POSTC, 0).
:- assign(CID, RID), case(CID, CASET, _, _, _, _), referee(RID, _, _, _, _), prefType(RID, CASET, 0).
:- assign(CID, RID), case(CID, _, _, _, _, Damage), referee(RID, e, _, _, _), externalMaxDamage(Threshold), Damage > Threshold.

% Weak Constraints
{ assign(CID, RID) : referee(RID, _, _, _, _) } = 1 :- case(CID, _, _, _, _, _).
:~ assign(_, RID), referee(RID, e, _, _, _). [1@1, RID]
:~ assign(_, RID1), assign(_, RID2), referee(RID1, e, _, Payment1, _), referee(RID2, e, _, Payment2, _), Payment1 > Payment2. [1@2]
:~ assign(_, RID1), assign(_, RID2), referee(RID1, _, Workload1, _, _), referee(RID2, _, Workload2, _, _), Workload1 > Workload2. [1@3]
:~ assign(CID, RID), case(CID, CASET, _, _, _, _), referee(RID, _, _, _, _), prefType(RID, CASET, Pref), Pref > 0. [1@4]
:~ assign(CID, RID), case(CID, _, _, _, POSTC, _), referee(RID, _, _, _, _), prefRegion(RID, POSTC, Pref), Pref > 0. [1@5]

#show assign/2.