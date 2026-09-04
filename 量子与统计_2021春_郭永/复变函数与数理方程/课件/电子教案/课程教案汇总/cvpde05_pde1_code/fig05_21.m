clear

subplot(3,1,2);

Lx=0; Rx=sqrt(2.5*pi); 
Nx=101; dx=(Rx-Lx)/(Nx-1);

xx=Lx:dx:Rx;
uu=sin(xx.^2).*(Rx^2+4-xx.^2)/12;
P1=plot(xx,uu); set(P1,'linewidth',1.5); 
axis([Lx Rx -.8 1]);

grid on;
set(gca,'fontsize',12);
set(gca,'xtick',[xx(20) xx(50) xx(Nx)]); set(gca,'XTickLabel',{'a','b','l'});
set(gca,'ytick',[0 uu(20) uu(50)]); set(gca,'YTickLabel',{'O','',''});

L1=xlabel('x'); set(L1,'fontsize',12); 
L2=ylabel('u=u(x,t)');  set(L2,'fontsize',12); 