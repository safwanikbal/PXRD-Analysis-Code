
clc

% MATLAB code to plot PXRD Spectroscopy data for intensity peak analysis

%%
%Section1 Use for single plot (Leave out section 2)
data =  ;  % your file variable name
x = data.x;            % first column (2θ)
y = data.y ;            % second column (intensity)


%Identify name of data set
DataSetName = ''

%%
%Section 2 
%Use this section if you have a second matching plot 
%Use this combined with section 1 for a dual graph plot
data2=;
x2 = data2.x2;            % first column (2θ)
y2 = data2.y2 + 5000;            % second column (intensity)

Identify name of second data set
DataSet2Name=''



%%
%Section 3
%Use this section (leave out section 4) for single plots

figure(1); clf
plot(x, y, 'b','Linewidth', 0.1, 'DisplayName','') %Insert data name
%Set limit to x for viewing concentrated area of data
xlim([10 80]);
xlabel('2θ (degrees)')
ylabel('Intensity (a.u.)')
title('PXRD', DataSetName)
legend;



%%
% Section 4
%Use this section combined with section 3 for plotting a second graph

figure(1); clf
hold on
plot(x,y , DisplayName='') % Insert data name
plot(x2,y2 , DisplayName='') % Insert second data name
legend
xlabel('2\theta (Degrees)')
ylabel('Intensity (a.u.)')