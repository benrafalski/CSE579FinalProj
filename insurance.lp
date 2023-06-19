% % % assign(Rcid, Rrid) :- case(Rcid), ref(Rrid), pref(Rrid, Rtype), Rtype != 0.

% % % case(4).    
% % % ref(3).    ref(5).
% % % pref(3, 0).    pref(5, 1).
% % % #show assign/2.

% % % Step 1: Define the input and output format

% % % Referees
% % referee(rid, type, max_workload, prev_workload, prev_payment).

% % % Cases
% % case(cid, type, effort, damage, postc, payment).

% % % Maximum damage for external referees
% % externalMaxDamage(d).

% % % Region preferences
% % prefRegion(rid, postc, pref).

% % % Type preferences
% % prefType(rid, caset, pref).

% % % Step 2: Formulate hard constraints

% % % Maximum workload constraint
% % :- referee(rid, _, max_workload, prev_workload, _), prev_workload + effort > max_workload, assign(cid, rid).

% % % Region constraint
% % :- assign(cid, rid), case(cid, _, _, _, postc, _), prefRegion(rid, postc, 0).

% % % Type constraint
% % :- assign(cid, rid), case(cid, type, _, _, _, _), prefType(rid, type, 0).

% % % Damage threshold constraint
% % :- assign(cid, rid), case(cid, _, _, damage, _, _), damage > d, referee(rid, external, _, _, _).

% % % Step 3: Formulate weak constraints

% % % Payment fairness constraint
% % % #external=1 { assign(cid, rid) : case(cid, _, _, _, _, payment), referee(rid, external, _, _, _) } #external=1.
% % % #external=1 { payment : case(cid, _, _, _, _, payment), referee(rid, external, _, _, _), assign(cid, rid) } #external=1.

% % % Workload fairness constraint
% % % #internal=1 { assign(cid, rid) : case(cid, _, effort, _, _, _), referee(rid, internal, _, prev_workload, _) } #internal=1.
% % % #internal=1 { effort : case(cid, _, effort, _, _, _), referee(rid, internal, _, prev_workload, _), assign(cid, rid) } #internal=1.

% % % Type preference constraint
% % :- assign(cid1, rid), assign(cid2, rid), case(cid1, type1, _, _, _, _), case(cid2, type2, _, _, _, _), prefType(rid, type1, pref1), prefType(rid, type2, pref2), pref1 < pref2.

% % % Region preference constraint
% % :- assign(cid1, rid), assign(cid2, rid), case(cid1, _, _, _, postc1, _), case(cid2, _, _, _, postc2, _), prefRegion(rid, postc1, pref1), prefRegion(rid, postc2, pref2), pref1 < pref2.

% % % Step 4: Define optimization criteria

% % % Define optimization criteria here

% % % Step 5: Encode the problem

% % % Combine input, hard constraints, weak constraints, and optimization criteria

% % % Step 6: Invoke Clingo

% % % Run Clingo solver on the encoded problem

% % % Step 7: Interpret the results

% % % Extract the assignment of referees to cases and represent as 'assign(cid, rid)' atoms
% % #show assign/2.

% % Step 1: Define the input and output format

% referee(rid, type, max_workload, prev_workload, prev_payment).
% case(cid, type, effort, damage, postc, payment).
% externalMaxDamage(d).
% prefRegion(rid, postc, pref).
% prefType(rid, caset, pref).

% % Step 2: Formulate hard constraints

% :- assign(cid, rid), case(cid, _, _, _, postc, _), prefRegion(rid, postc, 0).
% :- assign(cid, rid), case(cid, type, _, _, _, _), prefType(rid, type, 0).
% :- assign(cid, rid), case(cid, _, _, damage, _, _), damage > d, referee(rid, external, _, _, _).
% :- referee(rid, _, max_workload, prev_workload, _), prev_workload + effort > max_workload, assign(cid, rid).

% % Step 3: Formulate weak constraints

% #external=1 { assign(cid, rid) : case(cid, _, _, _, _, payment), referee(rid, external, _, _, _) } #external=1.
% #external=1 { payment : case(cid, _, _, _, _, payment), referee(rid, external, _, _, _), assign(cid, rid) } #external=1.

% #internal=1 { assign(cid, rid) : case(cid, _, effort, _, _, _), referee(rid, internal, _, prev_workload, _) } #internal=1.
% #internal=1 { effort : case(cid, _, effort, _, _, _), referee(rid, internal, _, prev_workload, _), assign(cid, rid) } #internal=1.

% :- assign(cid1, rid), assign(cid2, rid), case(cid1, type1, _, _, _, _), case(cid2, type2, _, _, _, _), prefType(rid, type1, pref1), prefType(rid, type2, pref2), pref1 < pref2.

% :- assign(cid1, rid), assign(cid2, rid), case(cid1, _, _, _, postc1, _), case(cid2, _, _, _, postc2, _), prefRegion(rid, postc1, pref1), prefRegion(rid, postc2, pref2), pref1 < pref2.

% % Step 4: Define optimization criteria

% #minimize { payment : assign(cid, rid), case(cid, _, _, _, _, payment) }.

% % Step 5: Encode the problem

% % Combine input, hard constraints, weak constraints, and optimization criteria

% % Referees
% { assign(cid, rid) : referee(rid, type, max_workload, prev_workload, prev_payment) } = 1 :- case(cid, _, _, _, _, _).

% % Cases
% { assign(cid, rid) : case(cid, type, effort, damage, postc, payment) } = 1 :- referee(rid, type, max_workload, prev_workload, prev_payment).

% % Step 6: Invoke Clingo

% #show assign/2.
% #show payment/1.

% % Step 7: Interpret the results

% % Extract the assignment of referees to cases and represent as 'assign(cid, rid)' atoms
