function CirclePlot(n,r,c) %// number of points, radius, centre
    % generate circle points
    t = linspace(0,2*pi,n);
    x = c(1) + r*sin(t);
    y = c(2) + r*cos(t);
   
    % inverse point has perpendicular gradient, offset from origin
    % length of line must be length*sqrt(x^2+y^2)=1
    angle = atan (x./y);
    length = 1.0./(sqrt(x.*x+y.*y));
    invx = -length.*cos(angle);
    invy = -length.*sin(angle);
   
    % draw line
    %line(invx,invy);
    patch(invx,invy,'white');
end