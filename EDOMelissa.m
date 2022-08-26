function solEDO = EDOMelissa() % Inicio Scrip EDOMelissa()
    %%%%    Scrip que resuelve una EDO separable, lineal, de primer grado por
    %%%%    medio del comando dsolve(), con condición inicial.
    
    syms Y(x) % Definiendo simbología o variables simbólicas
    eds = diff(Y,x) == 4 - 2*x; % diff() para diferenciar una expresión o función simbolica
    condicion = Y(0) == 1; % Definiendo la condicion inicial
    sol(x) = dsolve( eds, condicion); % dsolve() me da la solución de la EDO de acuerdo a la condición inicial
    solEDO = sol(x); % le asigno a solEDO lo que tiene la función sol(x)  
    
    x = -1:0.005:1; % genero un vector x con valores desde -1 hasta 1, con incremento de 0.005
    y = eval( vectorize( solEDO ) ); % Evalúo la solución particular de la EDO con los valores del vector x
    
    %Graficando la solución particular de la EDO
    figure('Name' , 'Angie Melissa Bravo Gonzalez') % Dandole un nombre a la figura o ventana
    plot(x,y,'red', 0,sol(0),'-s') % Graficando la solución particular de la EDO y la condición inicial
    
    title('Solución particular de la EDO: y(x) = 1 - x(x - 4), y satisface y(0) = 1')%Título de la gráfica
    xlabel('x') % Etiquetando el eje x
    ylabel('y(x)') % Etiquetando el eje y
    legend('y(x) = 1 - x(x - 4)','y(0) = 1') % Etiquetas de las funciones representadas
    grid on % Para activar la cuadricula en el plano xy
    grid minor
    
    % Para que se muestre el origen (0,0) en el plano xy
    ax = gca;
    ax.XAxisLocation = 'origin';
    ax.YAxisLocation = 'origin';
    box off
    
    % Mostrando resultados por consola con fprintf()
    fprintf('\nAPLICACIÓN QUE RESUELVE LA EDO DE VARIAVLE SEPARABLE:')
    fprintf('\n\tdy/dx = 4 - 2x  con y(x=0) = 1')
    fprintf('\n\nCuya solución, encontrada a mano con la condición inicial es ES:')
    fprintf('\n\ty(x) = 4x - x^2 + 1\n\n')
    
    fprintf('Ahora, la EDO a solucionar por medio de MATLAB con el comando dsolve():\n');
    fprintf('\tdy/dx = 4 - 2x\n');
    fprintf('Con condición inicial:\n');
    fprintf('\ty(0) = 1\n\n');
    
    fprintf('Es (Solución Particular de la EDO): \n\ty(x) = ');
    disp(solEDO); % disp(solEDO) muestra el valor de la variable solEDO que contiene variable simbólica x.
    
    fprintf('Ahora bien, si comparamos las 2 soluciones, a mano y por Matlab, son las mismas,\n');
    fprintf('solo hay que expandir la soución dada por Matlab para ver la igualdad de ellas.\n\n');
end % Fin Scrip EDOMelissa()
