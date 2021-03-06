function [S,E,IR,IU,O] = unpack_states(states)
    %states: 5 vars (S,E,Is,Ia,obs) for each locn, by nens
[nrows, num_ens] = size(states);
num_loc = nrows/5;
Sidx=(1:5:5*num_loc)';
Eidx=(2:5:5*num_loc)';
Isidx=(3:5:5*num_loc)';
Iaidx=(4:5:5*num_loc)';
obsidx=(5:5:5*num_loc)';
S=states(Sidx,:);
E=states(Eidx,:);
IR=states(Isidx,:);
IU=states(Iaidx,:);
O = states(obsidx,:);
end