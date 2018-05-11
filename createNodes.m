function [nodePositions]= createNodes(min, max,numNodes)
for i=1:numNodes
    nodePositions(i,1) = (rand) * (max.x);
    nodePositions(i,2) = (rand) * (max.y);
    nodePositions(i,3) = (rand) * (max.z);
end
end


