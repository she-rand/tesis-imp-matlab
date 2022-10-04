function [ind,vel,n_iter]=prePso()
clear all;
close all;
clc
Archivo='C:\Users\Liliana\Dropbox\Tesis\Excel\prueba.txt';
Archivo2='C:\Users\Liliana\Dropbox\Tesis\Excel\prim_it.txt';
Dat = fopen(Archivo,'r+');
Dat2 = fopen(Archivo2,'r+');
num_part=20;
num_var=3;
tolerance=0.01;
range_max=[0 0.0294 0.0170];%ki kp kd %tantos elementos como variables
range_min=[0 0 0];
bool=0;
bool2=0;
leer_linea='';
leer_linea2='';
n_iter=1;

frewind(Dat);
%lee el archivo si hay datos los guarda en vectores
while ~feof(Dat)
    
   leer_linea = fgetl(Dat)
   leer_linea2 = fgetl(Dat2)
   if(leer_linea==-1) bool=1;
   end
   if(leer_linea2==-1) bool2=1;
   end
   
   if (bool==1&&bool2==1)
       n_iter=1;
      
       %rand('seed',1);
       for i=1:num_var
       ind_m(:,i) = range_min(i) + (range_max(i)-range_min(i)).*rand(num_part,1) %Initial swarm
       s=print_matrix(ind_m);
       end
       s=print_matrix(ind_m)
       fprintf(Dat2,'%s',s);

   elseif(bool==1&&bool2~=1)
       
       n_iter=1
       k2=str2num(leer_linea2);
       
       ind_m=put_mat(k2,1,num_part*num_var);
       velo_m=zeros(num_part,num_var);
   
   else
       
       k=str2num(leer_linea);
       n_iter=k(1)+1;
       pm_m=put_mat(k(2:7),2,3);
       fm_m=put_mat(k(8:9),2,1);
       r_m=k(10);
       ind_m=put_mat(k(11:10+num_part*num_var),num_part,3);
       velo_m=put_mat(k(11+num_part*num_var:10+2*num_part*num_var),num_part,3);
       
       
   end

   if isempty(leer_linea) 
       n_iter=1; 
       disp('hola1')
       break
   end
    
      
end

% Si hay datos guardarlos en ind y vel.
% Si no hay datos usa inicialización aleatoria.


if n_iter==1
 ind=a1d(ind_m);
 vel=a1d(zeros(num_part,num_var));
 fclose(Dat)
    fclose(Dat2)
else
    ind=a1d(ind_m);
    vel=a1d(velo_m);
    fclose(Dat)
    fclose(Dat2)
end


