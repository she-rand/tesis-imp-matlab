function [bool,m]=condicion_lin2(m,leader)
disp(m)
disp(leader)
bool=1
nvar=14
a=[2 4 5 8 13 14 7 10]
b=[1 3 11 12 7 10 5 8]
for i=1:nvar
    if(m(i)>1)
        m(i)=1
    end
    if(m(i)<-1)
        m(i)=-1
    end
end
for i=1:8
    if(m(a(i))<m(b(i)))
        bool=0
        aux=m(b(i));
        m(b(i))=m(a(i));
        m(a(i))=aux;
    end
end
if(m(6)>m(2))
    m(6)=m(2)
end
if(m(6)<m(1))
    m(6)=m(1)
end
if(m(9)>m(4))
    m(9)=m(4)
end
if(m(9)<m(3))
    m(9)=m(3)
end

    
  
end
