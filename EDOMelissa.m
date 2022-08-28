%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matlab R2015b %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Scrip que resuelve una EDO separable, lineal, de primer grado por
%%%% medio del comando dsolve(), con condici�n inicial. 

% dsolve() da la soluci�n particular de la EDO
solP = dsolve( 'Dy = 4-2*x', 'y(0) = 1','x' )

% genero un vector x con valores desde -2 hasta 5, de 500 elementos
x = linspace(-2,5,500);
% Eval�o la soluci�n particular de la EDO con los valores del vector x
y = eval( vectorize( solP ) );

%%%% Graficando la solucion particular y condicion inicial
% Dandole un nombre a la figura o ventana
figure('Name' , 'Angie Melissa Bravo Gonzalez') 
plot(x, y, 'red', 0, 1, '-s')% Graficando x, y, y(0)=1
% D�ndole un t�tulo a la gr�fica
title('Soluci�n particular y(x) = 1 - x(x - 4), satisface y(0) = 1')
xlabel('x') % Etiquetando el eje x
ylabel('y(x)') % Etiquetando el eje y
legend('y(x) = 1 - x(x - 4)','y(0) = 1') % Convencion de las funciones
axis([-1 5 -1 5.3]) % Definiendo el area del plano xy a mostrar
    
%%%% Mostrando resultados por consola con fprintf()
fprintf('\nAplicaci�n Que Resuelve La EDO De Variable Separable:')
fprintf('\n\tdy/dx = 4 - 2x  con y(x=0) = 1')
fprintf('\n\nCuya soluci�n, encontrada a mano con la condici�n inicial es:')
fprintf('\n\ty(x) = 4x - x^2 + 1\n\n')
    
fprintf('Ahora, la EDO a solucionar con el comando dsolve():\n');
fprintf('\tdy/dx = 4 - 2x\n');
fprintf('Con condici�n inicial:\n');
fprintf('\ty(0) = 1\n\n');
    
fprintf('Es (Soluci�n Particular de la EDO): \n\ty(x) = ');
disp(solP); % disp() para mostrar por consola una expresi�n con variables simb�licas.
    
fprintf('Ahora bien, si comparamos las 2 soluciones, a mano y por Matlab, son las mismas,\n');
fprintf('solo hay que expandir la soluci�n dada por Matlab para ver la igualdad de ellas.\n\n');