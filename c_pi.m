function c_pi(r,N)
% programa para calcular el valor aproximado de pi, poniendo un circulo y graficando puntos aleatorios, contando los que estan
% dentro del circulo, dividiendo entre el numero total de puntos y multriplicando por 4. 
% donde:
%   r : radio del círculo
%   N : número de puntos aleatorios
clc
syms e s;
e=0;
t=linspace(0,2*pi,1000);
x=r*cos(t);
y=r*sin(t);
hold on
plot(x,y,'linewidth',2);
k=1;
while (k <= N)
    px=randi([-100*r,100*r])/100;
    py=randi([-100*r,100*r])/100;
    plot(px,py,'.r')
    if (sqrt(px^2+py^2)<=r)
        e=e+1;
    end
     k=k+1;
end
fprintf('número de figuras dentro del circulo =%d \n',e)
fprintf('calculo de "PI" \n \n')

s=4.*(e./N);
fprintf('aproximacion a "PI" =%d \n',s)

end
