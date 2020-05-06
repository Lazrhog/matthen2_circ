function LinePlot(l,n) % length, num points
    % generate points
    a = linspace(0,l/2,n/2);
    b = linspace(-l/2,0,n/2);
    x = horzcat(a,b);
       
    % inverse point has perpendicular gradient, offset from origin
   % length of line must be length*sqrt(x^2+y^2)=1, but y is fixed at 1
    angle = atan (x);
    length = 1.0./(sqrt((x.*x)+1));
    invx = -length.*cos(angle);
    invy = -length.*sin(angle);
   
    % draw line
    patch(invx,invy,'red');
    %line(invx,invy);
end