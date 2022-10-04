function out=fuzzy_fun2(in)

fismat = readfis('sug');
out = evalfis(in,fismat);

end