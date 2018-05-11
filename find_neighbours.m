function   [neighbours , succ] = find_neighbours(forwarder,sink, accRange,...
    numNodes,nodePositions)
k=0;
succ=0;
neighbours = [];
index = 1;
% copy x/y/z co-ordinates of forwarding node
 fx=nodePositions(forwarder,1);
 fy=nodePositions(forwarder,2);
 fz=nodePositions(forwarder,3);
 
 % Check whether sink is neighbour
 sink_x = sink(1,1);    
 sink_y = sink(1,2);
 sink_z = sink(1,3);
 
 % find the distance between forwarder and sink
 dst_sink = sqrt((fx- sink_x)^2 + (fy- sink_y)^2 + (fz- sink_z)^2);

 % If sink is a neighbour, packets can send to sink Succesfuly
 if( dst_sink <= accRange)
     succ=1;
     return;
 end
 
 for i=1: numNodes
    if (forwarder == i)
         continue;
    end
       
    % Copy x/y/z co-ordinates of neighbor
    x=nodePositions(i,1);
    y=nodePositions(i,2);
    z= nodePositions(i,3);
           
    distance = sqrt((fx-x)^2 + (fy-y)^2 + (fz-z)^2);
    if ( distance <=  accRange)              
        neighbours(index)=i;
        index= index +1;
        
    end
end
 
 return   
end