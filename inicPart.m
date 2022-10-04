function [ind]=inicPart(npart)

part=1
min1=[-0.4 0.15 -0.2 0.1];
max1=[-0.15 0.4 -0.1 0.2]
       
       for i=1:4
           tr_m(:,i) = min1(i) + (max1(i)-min1(i)).*rand(npart,1) %2 bases de triangulos
       end
       
       
       
       for i=1:npart
           if(tr_m(i,1)>tr_m(i,2))
               aux=tr_m(i,1)
               tr_m(i,1)=tr_m(i,2);
               tr_m(i,2)=aux
           end
           if(tr_m(i,3)>tr_m(i,4))
               aux=tr_m(i,3)
               tr_m(i,3)=tr_m(i,4);
               tr_m(i,4)=aux
           end
       end
       
       
       for i=1:npart
           %tr2=tr_m(i,1)+(tr_m(i,2)-tr_m(i,1)).*rand(1,3)
           tr2(1)=-0.1+(-0.04-(-0.1))*rand(1)%elegor limite
           tr2(2)=-tr2(1)
           tr_m(i,5)=tr2(1);%tr2(1)
           tr_m(i,6)=0;%tr2(2)
           tr_m(i,7)=tr2(2);%tr2(3)
           %tr2=tr_m(i,3)+(tr_m(i,4)-tr_m(i,3)).*rand(1,3)
            %tr2=sort(tr2)
            tr2(1)=-0.01+(0-(-0.01))*rand(1)
           tr2(2)=-tr2(1)
           tr_m(i,8)=tr2(1)
           tr_m(i,9)=0%tr2(2)
           tr_m(i,10)=tr2(2)
       end
       
       for i=1:npart
           tr_m(i,11)=tr_m(i,1)%(-1)+(tr_m(i,5)-(-1))*rand(1,1)
           tr_m(i,12)=tr_m(i,3)%(-1)+(tr_m(i,8)-(-1))*rand(1,1)
           tr_m(i,13)=tr_m(i,2)%tr_m(i,7)+(1-tr_m(i,7))*rand(1,1)
           tr_m(i,14)=tr_m(i,4)%tr_m(i,10)+(1-tr_m(i,10))*rand(1,1)
           
           
       end
ind=tr_m
end