function [p_min, f_min,radius,ind,v]=pso4( pesoStoc,ind,v,valF)
% It finds the absolut minimum of a n variables function with the Particle 
% Swarm Optimization Algorithm.
% The input parameters are:
% -func: it's the objective function's handle to minimize
% -numInd: it's the number of the swarm's elements
% -range: it's the range in which the elements must be created
% -n_var: it's the number of function's variables
% -tolerance: it's the tolerance for the stop criterion on the swarm's
% radius
% -numIter: it's the max iterations' number
% -pesoStoc: it's the swarm's movability
%
% The output parameters are:
% -p_min: the minimum point find
% -f_min: the minimum value of the function
% -iter: the number of iterations processed


k=pesoStoc; % weight of stocastic element

%v=zeros(numInd,numVar); % Vector of swarm's velocity



    
    [valF_ord,index]=sort(valF); % Sort the objective function's values for the swarm and identify the leader
    leader=ind(index(1),:);
    for l=1:size(ind,1) % Calculates the new velocity and positions for all swarm's elements
        %rand('seed',1);
        fi=rand();
        v(l,:)=(1-(sqrt(k*fi))/2)*v(l,:)+k*fi*(leader-ind(l,:)); % Velocity
        ind(l,:)=ind(l,:)+(1-(sqrt(k*fi))/2)*v(l,:)+(1-k*fi)*(leader-ind(l,:)); % Position
    end
    radius=norm(leader-ind(index(end),:)); % Calculates the new radius
    


p_min=ind(1:2,:); % Output variables
f_min=valF_ord(1:2,:);