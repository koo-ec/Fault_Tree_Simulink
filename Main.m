%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Program Name : Fault Tree Reliability Analysis Of Underwater Glider     %
% Author       : Koorosh Aslansefat                                       %
% Version      : 1                                                        %
% Description  : Reliability of Diffrent sub-system                       %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Clear Section
% Clear
clear all
close all
clc

%%
% Run Simulation Model
sim('Glider_FTA.mdl');
sim('Fault_Tree_11.mdl');

%% 
% Plot Total Reliability
s=figure(1);
set(s,'Color','w');
plot(tout,Y.signals.values,'-.b','LineWidth',3)
hold on
plot(tout,Y1.signals.values,'-.m','LineWidth',3)
title('\fontsize{13}Reliability Comparison Between AUV and AUG')
xlabel('\fontsize{11}Time (hr)')
ylabel('\fontsize{11}Total System Reliability')
hleg = legend('\fontsize{11}AUG','\fontsize{11}AUV',...
              'Location','SouthWest');
set(hleg,'FontAngle','italic','TextColor',[.3,.2,.1])
hold off
%% 2
s=figure(2);
set(s,'Color','w');
plot(tout,Reliability.signals(1,1).values,'-.b','LineWidth',3)
title('\fontsize{13}Reliability Comparison of Power Sys. of AUV and AUG')
xlabel('\fontsize{11}Time (hr)')
ylabel('\fontsize{11}System Reliability')
hold on
plot(tout,Reliability1.signals(1,6).values,'-.m','LineWidth',3)
hleg = legend('\fontsize{11}AUG','\fontsize{11}AUV',...
              'Location','SouthWest');
set(hleg,'FontAngle','italic','TextColor',[.3,.2,.1])
hold off

%% 3
s=figure(3);
set(s,'Color','w');
plot(tout,Reliability.signals(1,10).values,'-.b','LineWidth',3)
title('\fontsize{13}Reliability Comparison of Navigation Sys. of AUV and AUG')
xlabel('\fontsize{11}Time (hr)')
ylabel('\fontsize{11}System Reliability')
hold on
plot(tout,Reliability1.signals(1,1).values,'-.m','LineWidth',3)
hleg = legend('\fontsize{11}AUG','\fontsize{11}AUV',...
              'Location','SouthWest');
set(hleg,'FontAngle','italic','TextColor',[.3,.2,.1])
hold off

%% 4
s=figure(4);
set(s,'Color','w');
plot(tout,Reliability.signals(1,6).values,'-.b','LineWidth',3)
title('\fontsize{13}Reliability Comparison of Computer Sys. of AUV and AUG')
xlabel('\fontsize{11}Time (hr)')
ylabel('\fontsize{11}System Reliability')
hold on
plot(tout,Reliability1.signals(1,2).values,'-.m','LineWidth',3)
hleg = legend('\fontsize{11}AUG','\fontsize{11}AUV',...
              'Location','SouthWest');
set(hleg,'FontAngle','italic','TextColor',[.3,.2,.1])
hold off