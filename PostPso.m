
function [f_min,p_min]=PostPso( pesoStoc,ind,v,valF,n_iter)
ind=T1dtoMx(ind,3);
v=T1dtoMx(v,3);
Archivo='C:\Users\Liliana\Dropbox\Tesis\Excel\prueba.txt';
Dat = fopen(Archivo,'r+');
while ~feof(Dat)
    
   leer_linea = fgetl(Dat);
end
%Llamar a PSO
[p_mini, f_mini,radius,ind,v]=pso4( pesoStoc,ind,v,valF)
p_min=a1d(p_mini);
f_min=a1d(f_mini);
fprintf(Dat,'%g',n_iter);
s=print_matrix(p_min);
fprintf(Dat,'%s',s);
s=print_matrix(f_min);
fprintf(Dat,'%s',s);
fprintf(Dat,'%s',' ');
fprintf(Dat,'%g',radius);
s=print_matrix(ind);
fprintf(Dat,' %s',s);
s=print_matrix(v);
fprintf(Dat,' %s',s);

%fprintf(Dat,' %g%g ',ind);
fprintf(Dat,'\n');

fclose(Dat);
