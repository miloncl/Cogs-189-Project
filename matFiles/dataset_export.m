
clear all; close all; clc

% Get list of gdf files in directory of choice
fileList = dir('C:\\Users\\Darin Tsui\\Documents\\COGS 189\\*.gdf')

%Extract files into mat format
EEG.etc.eeglabvers = '2021.0'; % this tracks which version of EEGLAB is being used, you may ignore itEEG.etc.eeglabvers = '2021.0'; % this tracks which version of EEGLAB is being used, you may ignore it
eeglab 

for i = 1:length(fileList)
    EEG = pop_biosig(sprintf('C:\\Users\\Darin Tsui\\Documents\\COGS 189\\%s',fileList(i).name));
    EEG = eeg_checkset( EEG );
    save(sprintf('C:\\Users\\Darin Tsui\\Documents\\COGS 189\\%s.mat',fileList(i).name(1:end-4)))
end