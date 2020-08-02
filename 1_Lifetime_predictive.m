sensorData = readtable('data/INPUT.csv','ReadVariableNames',true);
% for ii = 1:30
%    subplot(6,5,ii)
%    plot(sensorData.Time, sensorData{:,2+ii})
%    title(sensorData.Properties.VariableNames{2+ii})
%    xlabel('Time')
%    xlim([0,250])
% end

VariableNames = {'Time','datetime','MW','MVar','Speed','FlowGenCwInlet2StatorAirCooler', ...
    'TempGenCwAirCoolerOut','TempGenCwAirCoolerIn','StatorHotAirTemp1','StatorColdAirTemp1',...
    'StatorHotAirTemp2','StatorColdAirTemp2','StatorHotAirTemp3','StatorColdAirTemp3',...
    'StatorHotAirTemp4','StatorColdAirTemp4','StatorHotAirTemp5','StatorColdAirTemp5',...
    'StatorHotAirTemp6','StatorColdAirTemp6','StatorHotAirTemp7','StatorColdAirTemp7',...
    'StatorHotAirTemp8','StatorColdAirTemp8','StatorHotAirTemp9','StatorColdAirTemp9',...
    'StatorHotAirTemp10','StatorColdAirTemp10','StatorHotAirTemp11','StatorColdAirTemp11',...
    'StatorHotAirTemp12','StatorColdAirTemp12'};

sensorData = sensorData(:,VariableNames);

SmoothData = sensorData;
SmoothData{:,3:end} = movmean(SmoothData{:,3:end},[4,0]);
SmoothData(1:5,:) = [];

% for ii = 1:30
%    subplot(6,5,ii)
%    plot(SmoothData.Time, SmoothData{:,2+ii})
%    title(SmoothData.Properties.VariableNames{2+ii})
%    xlabel('Time')
%    xlim([0,250])
% end

% controlchart(sensorData.MW, 'chart','i')
% controlchart(sensorData.StatorHotAirTemp1, 'chart','i')

filenames = 'INPUT';
file = [pwd '\data\' filenames '.csv'];
ds = datastore(file, 'TreatAsMissing','NA','Delimiter',',',...
    'SelectedVariableNames',VariableNames, 'ReadSize','file');

dataAll = readall(ds);
% smoothDataAll = filterData(dataAll,125);

xtrain = dataAll{:,3:end};
xtrainStd = std(xtrain);
xtrainStandard = ()









































