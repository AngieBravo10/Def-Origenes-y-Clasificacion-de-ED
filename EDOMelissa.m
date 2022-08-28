%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matlab R2015b %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Scrip que resuelve una EDO separable, lineal, de primer grado por
%%%% medio del comando dsolve(), con condición inicial. 

% dsolve() da la solución particular de la EDO
solP = dsolve( 'Dy = 4-2*x', 'y(0) = 1','x' )

% genero un vector x con valores desde -2 hasta 5, de 500 elementos
x = linspace(-2,5,500);
% Evalúo la solución particular de la EDO con los valores del vector x
y = eval( vectorize( solP ) );

%%%% Graficando la solucion particular y condicion inicial
% Dandole un nombre a la figura o ventana
figure('Name' , 'Angie Melissa Bravo Gonzalez') 
plot(x, y, 'red', 0, 1, '-s')% Graficando x, y, y(0)=1
% Dándole un título a la gráfica
title('Solución particular y(x) = 1 - x(x - 4), satisface y(0) = 1')
xlabel('x') % Etiquetando el eje x
ylabel('y(x)') % Etiquetando el eje y
legend('y(x) = 1 - x(x - 4)','y(0) = 1') % Convencion de las funciones
axis([-1 5 -1 5.3]) % Definiendo el area del plano xy a mostrar
    
%%%% Mostrando resultados por consola con fprintf()
fprintf('\nAplicación Que Resuelve La EDO De Variable Separable:')
fprintf('\n\tdy/dx = 4 - 2x  con y(x=0) = 1')
fprintf('\n\nCuya solución, encontrada a mano con la condición inicial es:')
fprintf('\n\ty(x) = 4x - x^2 + 1\n\n')
    
fprintf('Ahora, la EDO a solucionar con el comando dsolve():\n');
fprintf('\tdy/dx = 4 - 2x\n');
fprintf('Con condición inicial:\n');
fprintf('\ty(0) = 1\n\n');
    
fprintf('Es (Solución Particular de la EDO): \n\ty(x) = ');
disp(solP); % disp() para mostrar por consola una expresión con variables simbólicas.
    
fprintf('Ahora bien, si comparamos las 2 soluciones, a mano y por Matlab, son las mismas,\n');
fprintf('solo hay que expandir la solución dada por Matlab para ver la igualdad de ellas.\n\n');