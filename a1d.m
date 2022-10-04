function out=a1d(in)
[f c]=size(in);
cont=0;
for i=1:f
    for j=1:c
        cont=cont+1;
        out(cont)=in(i,j);
    end
end
    