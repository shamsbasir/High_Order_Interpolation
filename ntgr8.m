function q=ntgr8(func)
% q=ntgr8(func) integrates func over [-1,1] with tight tolerances

q=integral(func,-1,1,'AbsTol',1.e-14,'RelTol',1.e-12);