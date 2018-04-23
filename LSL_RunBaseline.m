clear all;clc;close all;

% Initiate LSL Muse connection and recording
LSL_Muse_Initiation; %This initiates the Muse, opens an 'impedance' check, and begins recording.

%% Analysis
disp('Press any key to analyze spectra');     
pause;
path = '../Muse-lsl-Baseline/';
datafiles = dir([path 'data/']);
subnum = datafiles(end-1).name(1:3); %get most recent file

block_length = 20;
F = .1:.1:30;
wavenum = 10;

addpath([path 'DataAnalysis']);
[closed_pre, open_pre, F] = MuseLSL_ComputeSpectra([path 'data/'],subnum,block_length,F,wavenum);


%% Stop Recording and Disconnect Muse
LSL_Muse_Shutdown; %This closes terimal windows, forcing the connections to disconnect
