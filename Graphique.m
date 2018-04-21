%N.B: Le programme exporte les graphiques et les histogrammes au format jpeg
close all
clear all

file = 'bezdekIris.data.v2';
load bezdekIris.data.v2
B=csvread(file);
i0 = find(B(:,5) == 0);

c0 = B(i0,:);

i1 = find(B(:,5) == 1);
c1 = B(i1,:);

i2 = find(B(:,5) == 2);
c2 = B(i2,:);



%Longueur et Largeur s�pales
figure;
plot(c0(:,1),c0(:,2),'r*')
hold on
plot(c1(:,1),c1(:,2),'g*')
plot(c2(:,1),c2(:,2),'b*')
title('Longueur et Largeur des S�pales ');
legend('Iris Setosa','Iris Versicolour','Iris Virginica')
titre = 'Np-Longueur et Largeur des S�pales';
print(titre,'-djpeg');


%Longueur et Largeur des P�tales 
figure;
plot(c0(:,3),c0(:,4),'r*')
hold on
plot(c1(:,3),c1(:,4),'g*')
plot(c2(:,3),c2(:,4),'b*')
title('Longueur et Largeur des P�tales');
legend('Iris Setosa','Iris Versicolour','Iris Virginica')
titre = 'Np-Longueur et Largeur des P�tales';
print(titre,'-djpeg');

%longeur des S�pales et longueur des P�tales

figure;
plot(c0(:,1),c0(:,3),'r*')
hold on
plot(c1(:,1),c1(:,3),'g*')
plot(c2(:,1),c2(:,3),'b*')
title('Longueur des S�pales et Longueur des P�tales ');
legend('Iris Setosa','Iris Versicolour','Iris Virginica')
titre = 'Np-Longueur des S�pales et Longueur des P�tales';
print(titre,'-djpeg');

%longueur des S�pales et largeur des P�tales

figure;
plot(c0(:,1),c0(:,4),'r*')
hold on
plot(c1(:,1),c1(:,4),'g*')
plot(c2(:,1),c2(:,4),'b*')
title('Longueur des S�pales et Largeur des P�tales ');
legend('Iris Setosa','Iris Versicolour','Iris Virginica')
titre = 'Np-Longueur des S�pales et Largeur des P�tales';
print(titre,'-djpeg');


%Largeur des S�pales et longueur des P�tales 

figure;
plot(c0(:,2),c0(:,3),'r*')
hold on
plot(c1(:,2),c1(:,3),'g*')
plot(c2(:,2),c2(:,3),'b*')
title('Largeur des S�pales et Longueur des P�tales ');
legend('Iris Setosa','Iris Versicolour','Iris Virginica')
titre = 'Np-Largeur des S�pales et Longueur des P�tales';
print(titre,'-djpeg');

%Largeur des S�pales et largeur des P�tales

figure;
plot(c0(:,2),c0(:,4),'r*')
hold on
plot(c1(:,2),c1(:,4),'g*')
plot(c2(:,2),c2(:,4),'b*')
title('Largeur des S�pales et Largeur des P�tales');
legend('Iris Setosa','Iris Versicolour','Iris Virginica')
titre = 'Np-Largeur des S�pales et Largeur des P�tales';
print(titre,'-djpeg');


%
%Classe 0 Iris Setosa
figure;
hist(c0(:,1));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','r','EdgeColor','w');
title('Iris Setosa - Longueur du s�pal en cm');
titre = 'Iris Setosa - Longueur du s�pal en cm';
print(titre,'-djpeg');


figure;
hist(c0(:,2));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','r','EdgeColor','w');
title('Iris Setosa - Largeur du s�pal en cm');
titre = 'Iris Setosa - Largeur du s�pal en cm';
print(titre,'-djpeg');

figure;
hist(c0(:,3));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','r','EdgeColor','w');
title('Iris Setosa - Longueur des p�tales en cm');
titre = 'Iris Setosa - Longueur des p�tales en cm';
print(titre,'-djpeg');

figure;
hist(c0(:,4));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','r','EdgeColor','w');
title('Iris Setosa - Largeur des p�tales en cm');
titre = 'Iris Setosa - Largeur des p�tales en cm';
print(titre,'-djpeg');

%Classe1 Iris Versicolour
figure;
hist(c1(:,1));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','EdgeColor','w');
title('Iris Versicolour - Longueur du s�pal en cm');
titre = 'Iris Versicolour - Longueur du s�pal en cm';
print(titre,'-djpeg');

figure;
hist(c1(:,2));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','EdgeColor','w');
title('Iris Versicolour - Largeur du s�pal en cm');
titre = 'Iris Versicolour - Largeur du s�pal en cm';
print(titre,'-djpeg');

figure;
hist(c1(:,3));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','EdgeColor','w');
title('Iris Versicolour - Longueur des p�tales en cm');
titre = 'Iris Versicolour - Longueur des p�tales en cm';
print(titre,'-djpeg');

figure;
hist(c1(:,4));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','g','EdgeColor','w');
title('Iris Versicolour - Largeur des p�tales en cm');
titre = 'Iris Versicolour - Largeur des p�tales en cm';
print(titre,'-djpeg');

%Classe2 Iris Virginica
figure;
hist(c2(:,1));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','EdgeColor','w');
title('Iris Virginica - Longueur du s�pal en cm');
titre = 'Iris Virginica - Longueur du s�pal en cm';
print(titre,'-djpeg');

figure;
hist(c2(:,2));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','EdgeColor','w');
title('Iris Virginica - Largeur du s�pal en cm');
titre = 'Iris Virginica - Largeur du s�pal en cm';
print(titre,'-djpeg');

figure;
hist(c2(:,3));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','EdgeColor','w');
title('Iris Virginica - Longueur des p�tales en cm');
titre = 'Iris Virginica - Longueur des p�tales en cm';
print(titre,'-djpeg');

figure;
hist(c2(:,4));
h = findobj(gca,'Type','patch');
set(h,'FaceColor','b','EdgeColor','w');
title('Iris Virginica - Largeur des p�tales en cm');
titre = 'Iris Virginica - Largeur des p�tales en cm';
print(titre,'-djpeg');
