clf
rgb = imresize(imread('lena1.jpg'), 2);
imshow(rgb)
hold on

M = size(rgb,1);
N = size(rgb,2);

% grilla
for k = 1:16:M
    x = [1 N];
    y = [k k];
    plot(x,y,'Color','g','LineStyle','-');
end

for k = 1:16:N
    x = [k k];
    y = [1 M];
    plot(x,y,'Color','g','LineStyle','-');
end

% cuadrado rojo
% left
x = [1 1];
y = [32 1];
plot(x,y,'Color','r','LineStyle','-');
% top
x = [1 32];
y = [1 1];
plot(x,y,'Color','r','LineStyle','-');
% right 
x = [32 32];
y = [1 32];
plot(x,y,'Color','r','LineStyle','-');
% bottom
x = [32 1];
y = [32 32];
plot(x,y,'Color','r','LineStyle','-');

% cuadrado azul
% left
x = [32 32];
y = [1 32];
plot(x,y,'Color','b','LineStyle','-');
% right
x = [64 64];
y = [1 32];
plot(x,y,'Color','b','LineStyle','-');
% top
x = [32 64];
y = [1 1];
plot(x,y,'Color','b','LineStyle','-');
% bottom
x = [32 64];
y = [32 32];
plot(x,y,'Color','b','LineStyle','-');
hold off