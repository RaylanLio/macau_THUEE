clear
hold on; grid on;
rho=2;

for varphi=0:pi/50:2*pi
    z=rho*exp(i*varphi); w=sqrt(rho)*exp(0.5*i*varphi);
    P1=plot(real(z),imag(z),'b*',real(w),imag(w),'c*','MarkerSize',6); 
    axis([-2.2 2.2 -2.2 2.2]);
    pause(0.05);
end

for varphi=2*pi:pi/50:4*pi
    z=rho*exp(i*varphi); w=sqrt(rho)*exp(0.5*i*varphi);
    plot(real(z),imag(z),'ro',real(w),imag(w),'mo','MarkerSize',6); 
    axis([-2.2 2.2 -2.2 2.2]);
    pause(0.05);
end