clf
rgb = imread('lena1.jpg');
imshow(rgb)
hold on


M = size(rgb,1);
N = size(rgb,2);

% grilla
for k = 1:8:M
    x = [1 N];
    y = [k k];
    plot(x,y,'Color','g','LineStyle','-');
end

for k = 1:8:N
    x = [k k];
    y = [1 M];
    plot(x,y,'Color','g','LineStyle','-');
end

% cuadrado rojo
% left
x = [1 1];
y = [16 1];
plot(x,y,'Color','r','LineStyle','-');
% top
x = [1 16];
y = [1 1];
plot(x,y,'Color','r','LineStyle','-');
% right 
x = [16 16];
y = [1 16];
plot(x,y,'Color','r','LineStyle','-');
% bottom
x = [16 1];
y = [16 16];
plot(x,y,'Color','r','LineStyle','-');

% cuadrado azul
% left
x = [8 8];
y = [1 16];
plot(x,y,'Color','b','LineStyle','-');
% right
x = [24 24];
y = [1 16];
plot(x,y,'Color','b','LineStyle','-');
%top
x = [8 24];
y = [1 1];
plot(x,y,'Color','b','LineStyle','-');
%bottom
x = [8 24];
y = [16 16];
plot(x,y,'Color','b','LineStyle','-');
hold off