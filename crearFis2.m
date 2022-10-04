function crearFis2(v1,v2)

a = newfis('Sugenoprueba','sugeno','prod','probor','wtaver');
a = addvar(a,'input','error',[-1 1]);
a = addvar(a,'input','delta',[-1 1]);
a = addvar(a,'output','Ai',[-1 1]);
a = addvar(a,'output','Md',[-1 1]);
a = addmf(a,'input',1,'Negativo','trapmf',[-2 -1.3 v1(4) v1(5)]);
a = addmf(a,'input',1,'Zero','trimf',[v1(1) v1(2) v1(3)]);
a = addmf(a,'input',1,'Positivo','trapmf',[v1(6) v1(7) 1.3 2]);
a = addmf(a,'input',2,'Negativo','trapmf',[-2 -1.3 v2(4) v2(5)]);
a = addmf(a,'input',2,'Zero','trimf',[v2(1) v2(2) v2(3)]);
a = addmf(a,'input',2,'Positivo','trapmf',[v2(6) v2(7) 1.3 2]);

a = addmf(a,'output',1,'0.2','constant',0.2);
a = addmf(a,'output',1,'1.0','constant',1.0); 
a = addmf(a,'output',1,'1.3','constant',1.3); 
a = addmf(a,'output',1,'1.6','constant',1.6); 
a = addmf(a,'output',2,'0.5293','constant',0.5293);
a = addmf(a,'output',2,'0.6203','constant',0.6203); 
a = addmf(a,'output',2,'0.65','constant',0.65); 
a = addmf(a,'output',2,'0.7250','constant',0.7250); 
a = addmf(a,'output',2,'0.875','constant',0.875); 
rule1 = [1 1 1 4 1 1];
rule2 = [1 2 1 2 1 1];
rule3 = [1 3 1 1 1 1];
rule4 = [2 1 1 5 1 1];
rule5 = [2 2 1 5 1 1];
rule6 = [2 3 1 5 1 1];
rule7 = [3 1 2 3 1 1];
rule8 = [3 2 3 3 1 1];
rule9 = [3 3 4 3 1 1];
ruleList = [rule1;rule2;rule3;rule4;rule5;rule6;rule7;rule8;rule9];
a = addrule(a,ruleList);

writefis(a,'sug');
end
