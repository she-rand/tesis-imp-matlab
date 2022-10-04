function s=print_matrix(matrix)
esp=' ';
s='';

[fi col]=size(matrix);

for i=1:fi
    for j=1:col
        
        auxs=num2str(matrix(i,j));
        auxs=[esp auxs];
        s=[s auxs];
        
    end
end