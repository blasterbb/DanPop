%calcularea aproximarii integralei (pct c)
clc
I0=1/5*(1-exp(-2*pi))
f=@(x)cos(2*x)./exp(x);
quad(f,0,2*pi)

%calcule

n=120;
x=linspace(0,2*pi,n+1);
I=0;
I=sum(arrayfun(@(a,b)aproxInt(f,a,b), x(1:n), x(2:n+1)))
disp(I)