%N.B = Meme si de nouvelle bases sont generees les bases utilisees 
%pour effectuee la classification sont dans le dossier BaseEtudes
file = 'bezdekIris.data.v2';
load bezdekIris.data.v2
B=csvread(file);
N =  size(B,1)

tirage = rand([N,1]);

pApp = 2/3;
indApp = find(tirage <= pApp);
indGen = find(tirage > pApp);

BaseApp = B(indApp,:);
BaseGen = B(indGen,:);

csvwrite('baseApp.csv',BaseApp);
csvwrite('baseGen.csv',BaseGen);