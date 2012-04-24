close all;
clear all;

VolProbeHCL = 0.10; %l
VolProbeKomplex = 0.05; %l

%Kalkex: Kalkex gekocht; Leitung; Letiung gekocht; Britta; Britta gekocht
HCLVerbauch = [6.738 0.932 6.674 1.012 2.346 1.25]; 
EDTAVerbauch = [ 1.775 0.324 1.774 0.326 0.705 0.387];

StoffHCL = 0.1; %mol/l
StoffEDTA = 0.1; %mol/l

%Hydogenkarbonat konzentration
for i=1:6
    cHCO(i)=(StoffHCL*HCLVerbauch(i))/VolProbeHCL;
end

%Karbonathaerte
for i=1:6
    cKH(i)= 0.5*(cHCO(i));
end

%Gesamthaerte
for i=1:6
    cGH(i)=(EDTAVerbauch(i)*StoffEDTA)/VolProbeKomplex;
end

%Nichtkarbonathaerte
for i=1:6
    cNKH(i)=cGH(i)-cKH(i);
end

disp('Kalkex, Kalkex gekocht; Leitung; Letiung gekocht; Britta; Britta gekocht')
cHCO
cKH
cGH
cNKH