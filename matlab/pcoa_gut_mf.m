% run pcoa on study 550, but only on the samples collected from the gut
% microbiome. label the sex of the sample. 
clc;
clear;
close all;

% add the fathom toolbox to your path 
addpath('Fathom/')

load data.txt
labels_stng = importdata('labels.txt');

u = unique(labels_stng);
for n = 1:length(labels_stng)
  if strcmp(labels_stng{n}, 'male')
    labels(n) = 1;
  else
    labels(n) = 2;
  end
end

dis = f_dis(data, 'hel');
result = f_pcoa(dis);

figure; 
hold on;
box on;
plot(result.scores(labels == 1, 1), result.scores(labels == 1, 2), 'ro');
plot(result.scores(labels == 2, 1), result.scores(labels == 2, 2), 'bs');
legend('male','female');
xlabel('PC1', 'FontSize', 22);
ylabel('PC2', 'FontSize', 22);
set(gca, 'fontsize', 22);