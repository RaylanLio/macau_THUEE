clear
hold on; grid on;

for varphi=0:pi/50:2*pi
    rho=2*(cos(varphi)+1.1);
    z=rho*exp(i*varphi); w=sqrt(rho)*exp(0.5*i*varphi);
    P1=plot(real(z),imag(z),'b*',real(w),imag(w),'c*','MarkerSize',6); 
    axis([-2.5 4.5 -3.2 3.2]);
    pause(0.05);
end

for varphi=2*pi:pi/50:4*pi
    rho=2*(cos(varphi)+1.1);
    z=rho*exp(i*varphi); w=sqrt(rho)*exp(0.5*i*varphi);
    plot(real(z),imag(z),'ro',real(w),imag(w),'mo','MarkerSize',6); 
    axis([-2.5 4.5 -3.2 3.2]);
    pause(0.05);
end