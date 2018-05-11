clc;
clear all;
close all;

%Transmision range
accRange=50;
%Number of nodes
numNodes=100;
succ=0;

% Min range of x,y,z
min.x=0;
min.y=0;
min.z=0;

% Min range of x,y,z
max.x=500;
max.y=500;
max.z=-500;
% Read source node
source=input('Enter source node');
forwarder=source;

sink(1,1)=250;
sink(1,2)=250;
sink(1,3)=0;

%numPackets= input('Enter number of packets to be transmitted ');
nodePositions = createNodes(min, max,numNodes);
plot3(nodePositions(:, 1), nodePositions(:, 2),nodePositions(:, 3), '+', ...
    'MarkerSize',15);
hold on
plot3(sink(1, 1), sink(1, 2),sink(1, 3), 'S', 'MarkerFaceColor', 'g');

%while ( succ == 0)
%find the neighbour nodes from forwarder
[neighbours ,succ]  = find_neighbours(forwarder,sink,accRange,numNodes,nodePositions);
%if(succ == 1)
 %   disp('---> sink');
  %  disp('packet routed succesfully');
   % return;
%end

