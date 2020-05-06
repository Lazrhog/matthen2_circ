%start with a line to get outer circle
LinePlot(100,2000);
 

%then draw a bunch of circles
for a=-100.5:100.5
    for b=1.5:10.5
        CirclePlot(100,0.5,[a b]);
    end
end