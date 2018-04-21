close all
clear all

%Charge les 2 bases
 baseApp = csvread('baseApp.csv');
 baseGen = csvread('baseGen.csv');

 
 mat1 = [];
 classifieur = [];
 %Nombre de Voisins
 k = 7;
 
 minBaseGen = min(baseGen(:,1:4));
 minBaseApp = min(baseApp(:,1:4));
 minBase = min(minBaseGen,minBaseApp);
 
 
 maxBaseGen = max(baseGen(:,1:4));
 maxBaseApp = max(baseApp(:,1:4));
 maxBase = max(maxBaseGen,maxBaseApp);

        
  for i = 1:size(baseGen, 1)
        baseGenElement = baseGen(i,:);
        
    for j = 1:size(baseApp, 1)
        baseAppElement = baseApp(j,:);
        baseGenVal = (baseGenElement(1:4) - minBase) / (maxBase - minBase);
        baseAppVal = (baseAppElement(1:4) - minBase) / (maxBase - minBase);
        
        dist = sqrt(sum((baseAppVal - baseGenVal)^2));
        mat1(j, 1:2) = [dist, baseAppElement(5)];
    end
    
    mat2 = sortrows(mat1, 1);
    mattemp = sortrows(mat1,1);
    mat2 = mat2(1:k, :);
    mat3 = [];
    for j = 1:3
        mat3(j) = size(find(mat2(:, 2) == j - 1), 1);
    end
    
    [~, resultat] = max(mat3);
    classifieur(i, 1:6) = [baseGenElement, resultat(1) - 1];
  end
  
  Succes = (sum(classifieur(:, 5) == classifieur(:, 6)) / size(classifieur, 1))*100
  Erreur = (100-Succes)