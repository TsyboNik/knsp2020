function [ ret ] = optim_function( way )
%% Функція, що потрібно оптимізувати
% grap - граф з вагами
% way - порядок обходу

% вхідні дані: матриця що описує граф для задачі комівояжера
%   * міста нумкруються від 1..N
%   * V>0 - вартість шляху
%   * V=M - нема шляху. якесь велике число

M = 1000;
graph = [ 
    M,  6,  4,  8,  7;
    6,  M,  7,  11, 7;
    4,  7,  M,  4,  3;
    8, 11,  7,  M,  5;
    7,  7,  3,  5,  M
];

sum = 0;
for i = 1:1:length(way)-1
    sum = sum + graph(way(i), way(i+1));
end

ret = sum;

end

