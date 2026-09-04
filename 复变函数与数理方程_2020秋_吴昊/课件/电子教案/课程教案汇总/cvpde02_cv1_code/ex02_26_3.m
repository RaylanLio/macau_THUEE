clear
hold on; grid on;

rho=1;
for varphi=0:pi/50:2*pi
    z=rho*exp(i*varphi)+(0.95+0.5*i); w=sqrt(z);
    P1=plot(real(z),imag(z),'b*',real(w),imag(w),'c*','MarkerSize',6); 
    P1=plot(real(z),imag(z),'ro',-real(w),-imag(w),'ro','MarkerSize',6); 
    axis([-1.7 2.2 -1.2 2.2]);
    pause(0.01);
end

% 
% for varphi=2*pi:pi/50:4*pi
%     z=rho*exp(i*varphi); w=sqrt(rho)*exp(0.5*i*varphi);
%     plot(real(z),imag(z),'ro',real(w),imag(w),'mo','MarkerSize',6); 
%     axis([-2.5 4.5 -3.2 3.2]);
%     pause(0.01);
% end