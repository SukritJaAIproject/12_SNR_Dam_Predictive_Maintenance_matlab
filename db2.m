%% Automate Importing Data by Generating Code Using the Database Explorer App
% This code reproduces the data obtained using the Database Explorer app by
% connecting to a database, executing a SQL query, and importing data into the
% MATLAB(R) workspace. To use this code, add the password for connecting to the
% database in the database command.

% Auto-generated by MATLAB Version 9.4 (R2018a) and Database Toolbox Version 8.1 on 17-May-2020 16:24:57

%% Set preferences
prefs = setdbprefs('DataReturnFormat');
setdbprefs('DataReturnFormat','table')

%% Make connection to database
conn = database('MySQL','vrk','');

%% Execute query and fetch results
curs = exec(conn,['SELECT DISTINCT ' ...
    'snr_h03.id, ' ...
    'snr_h03.rec_date, ' ...
    '`snr_h03.baa10.ce311.xq01`.`value` AS "MW",' ... #MW
    '`snr_h03.baa10.ce312.xq01`.`value` AS "MVar",' ... #MVar
    '`snr_h03.mey40.cs001.xq01`.`value` AS "Speed",' ... #Speed
    '`snr_h03.pcb80.cf001.xq01`.`value` AS "FlowGenCwInlet2StatorAirCooler",' ... #FlowGenCwInlet2StatorAirCooler
    '`snr_h03.pcb80.ct005.xq01`.`value` AS "TempGenCwAirCoolerOut",' ... #TempGenCwAirCoolerOut
    '`snr_h03.pcb80.ct002.xq01`.`value` AS "TempGenCwAirCoolerIn",' ... #TempGenCwAirCoolerIn
    '`snr_h03.mka81.ct001.xq01`.`value` AS "StatorHotAirTemp1",' ... #StatorHotAirTemp1
    '`snr_h03.mka82.ct001.xq01`.`value` AS "StatorColdAirTemp1",' ... #StatorColdAirTemp1
    '`snr_h03.mka81.ct002.xq01`.`value` AS "StatorHotAirTemp2",' ... #StatorHotAirTemp2
    '`snr_h03.mka82.ct002.xq01`.`value` AS "StatorColdAirTemp2",' ... #StatorColdAirTemp2
    '`snr_h03.mka81.ct003.xq01`.`value` AS "StatorHotAirTemp3",' ... #StatorHotAirTemp3
    '`snr_h03.mka82.ct003.xq01`.`value` AS "StatorColdAirTemp3",' ... #StatorColdAirTemp3
    '`snr_h03.mka81.ct004.xq01`.`value` AS "StatorHotAirTemp4",' ... #StatorHotAirTemp4
    '`snr_h03.mka82.ct004.xq01`.`value` AS "StatorColdAirTemp4",' ... #StatorColdAirTemp4
    '`snr_h03.mka81.ct005.xq01`.`value` AS "StatorHotAirTemp5",' ... #StatorHotAirTemp5
    '`snr_h03.mka82.ct005.xq01`.`value` AS "StatorColdAirTemp5",' ... #StatorColdAirTemp5
    '`snr_h03.mka81.ct006.xq01`.`value` AS "StatorHotAirTemp6",' ... #StatorHotAirTemp6
    '`snr_h03.mka82.ct006.xq01`.`value` AS "StatorColdAirTemp6",' ... #StatorColdAirTemp6
    '`snr_h03.mka81.ct007.xq01`.`value` AS "StatorHotAirTemp7",' ... #StatorHotAirTemp7
    '`snr_h03.mka82.ct007.xq01`.`value` AS "StatorColdAirTemp7",' ... #StatorColdAirTemp7
    '`snr_h03.mka81.ct008.xq01`.`value` AS "StatorHotAirTemp8",' ... #StatorHotAirTemp8
    '`snr_h03.mka82.ct008.xq01`.`value` AS "StatorColdAirTemp8",' ... #StatorColdAirTemp8
    '`snr_h03.mka81.ct009.xq01`.`value` AS "StatorHotAirTemp9",' ... #StatorHotAirTemp9
    '`snr_h03.mka82.ct009.xq01`.`value` AS "StatorColdAirTemp9",' ... #StatorColdAirTemp9
    '`snr_h03.mka81.ct010.xq01`.`value` AS "StatorHotAirTemp10",' ... #StatorHotAirTemp10
    '`snr_h03.mka82.ct010.xq01`.`value` AS "StatorColdAirTemp10",' ... #StatorColdAirTemp10
    '`snr_h03.mka81.ct011.xq01`.`value` AS "StatorHotAirTemp11",' ... #StatorHotAirTemp11
    '`snr_h03.mka82.ct011.xq01`.`value` AS "StatorColdAirTemp11",' ... #StatorColdAirTemp11
    '`snr_h03.mka81.ct012.xq01`.`value` AS "StatorHotAirTemp12",' ... #StatorHotAirTemp12
    '`snr_h03.mka82.ct012.xq01`.`value` AS "StatorColdAirTemp12"' ... #StatorColdAirTemp12
    'FROM ' ...
    'snr_h03 ' ...
    'INNER JOIN `snr_h03.baa10.ce311.xq01` ON snr_h03.id = `snr_h03.baa10.ce311.xq01`.id ' ... #MW
    'INNER JOIN `snr_h03.baa10.ce312.xq01` ON snr_h03.id = `snr_h03.baa10.ce312.xq01`.id ' ... #MVar
    'INNER JOIN `snr_h03.mey40.cs001.xq01` ON snr_h03.id = `snr_h03.mey40.cs001.xq01`.id ' ... #Speed
    'INNER JOIN `snr_h03.pcb80.cf001.xq01` ON snr_h03.id = `snr_h03.pcb80.cf001.xq01`.id ' ... #FlowGenCwInlet2StatorAirCooler
    'INNER JOIN `snr_h03.pcb80.ct005.xq01` ON snr_h03.id = `snr_h03.pcb80.ct005.xq01`.id ' ... #TempGenCwAirCoolerOut
    'INNER JOIN `snr_h03.pcb80.ct002.xq01` ON snr_h03.id = `snr_h03.pcb80.ct002.xq01`.id ' ... #TempGenCwAirCoolerIn
    'INNER JOIN `snr_h03.mka81.ct001.xq01` ON snr_h03.id = `snr_h03.mka81.ct001.xq01`.id ' ... #StatorHotAirTemp1
    'INNER JOIN `snr_h03.mka82.ct001.xq01` ON snr_h03.id = `snr_h03.mka82.ct001.xq01`.id ' ... #StatorColdAirTemp1
    'INNER JOIN `snr_h03.mka81.ct002.xq01` ON snr_h03.id = `snr_h03.mka81.ct002.xq01`.id ' ... #StatorHotAirTemp2
    'INNER JOIN `snr_h03.mka82.ct002.xq01` ON snr_h03.id = `snr_h03.mka82.ct002.xq01`.id ' ... #StatorColdAirTemp2
    'INNER JOIN `snr_h03.mka81.ct003.xq01` ON snr_h03.id = `snr_h03.mka81.ct003.xq01`.id ' ... #StatorHotAirTemp3
    'INNER JOIN `snr_h03.mka82.ct003.xq01` ON snr_h03.id = `snr_h03.mka82.ct003.xq01`.id ' ... #StatorColdAirTemp3
    'INNER JOIN `snr_h03.mka81.ct004.xq01` ON snr_h03.id = `snr_h03.mka81.ct004.xq01`.id ' ... #StatorHotAirTemp4
    'INNER JOIN `snr_h03.mka82.ct004.xq01` ON snr_h03.id = `snr_h03.mka82.ct004.xq01`.id ' ... #StatorColdAirTemp4
    'INNER JOIN `snr_h03.mka81.ct005.xq01` ON snr_h03.id = `snr_h03.mka81.ct005.xq01`.id ' ... #StatorHotAirTemp5
    'INNER JOIN `snr_h03.mka82.ct005.xq01` ON snr_h03.id = `snr_h03.mka82.ct005.xq01`.id ' ... #StatorColdAirTemp5
    'INNER JOIN `snr_h03.mka81.ct006.xq01` ON snr_h03.id = `snr_h03.mka81.ct006.xq01`.id ' ... #StatorHotAirTemp6
    'INNER JOIN `snr_h03.mka82.ct006.xq01` ON snr_h03.id = `snr_h03.mka82.ct006.xq01`.id ' ... #StatorColdAirTemp6
    'INNER JOIN `snr_h03.mka81.ct007.xq01` ON snr_h03.id = `snr_h03.mka81.ct007.xq01`.id ' ... #StatorHotAirTemp7
    'INNER JOIN `snr_h03.mka82.ct007.xq01` ON snr_h03.id = `snr_h03.mka82.ct007.xq01`.id ' ... #StatorColdAirTemp7
    'INNER JOIN `snr_h03.mka81.ct008.xq01` ON snr_h03.id = `snr_h03.mka81.ct008.xq01`.id ' ... #StatorHotAirTemp8
    'INNER JOIN `snr_h03.mka82.ct008.xq01` ON snr_h03.id = `snr_h03.mka82.ct008.xq01`.id ' ... #StatorColdAirTemp8
    'INNER JOIN `snr_h03.mka81.ct009.xq01` ON snr_h03.id = `snr_h03.mka81.ct009.xq01`.id ' ... #StatorHotAirTemp9
    'INNER JOIN `snr_h03.mka82.ct009.xq01` ON snr_h03.id = `snr_h03.mka82.ct009.xq01`.id ' ... #StatorColdAirTemp9
    'INNER JOIN `snr_h03.mka81.ct010.xq01` ON snr_h03.id = `snr_h03.mka81.ct010.xq01`.id ' ... #StatorHotAirTemp10
    'INNER JOIN `snr_h03.mka82.ct010.xq01` ON snr_h03.id = `snr_h03.mka82.ct010.xq01`.id ' ... #StatorColdAirTemp10
    'INNER JOIN `snr_h03.mka81.ct011.xq01` ON snr_h03.id = `snr_h03.mka81.ct011.xq01`.id ' ... #StatorHotAirTemp11
    'INNER JOIN `snr_h03.mka82.ct011.xq01` ON snr_h03.id = `snr_h03.mka82.ct011.xq01`.id ' ... #StatorColdAirTemp11
    'INNER JOIN `snr_h03.mka81.ct012.xq01` ON snr_h03.id = `snr_h03.mka81.ct012.xq01`.id ' ... #StatorHotAirTemp12
    'INNER JOIN `snr_h03.mka82.ct012.xq01` ON snr_h03.id = `snr_h03.mka82.ct012.xq01`.id ' ... #StatorColdAirTemp12
    'WHERE Date(snr_h03.rec_date) > date_sub(NOW(), interval 2 day) AND snr_h03.id > 10 LIMIT 2000']);
%     'WHERE Date(snr_h03.rec_date) = Date(NOW()) AND snr_h03.id > 10 LIMIT 2000']);
    
curs = fetch(curs);
data = curs.Data;

MW = data.MW;
MVar = data.MVar;
Speed = data.Speed;
FlowGenCwInlet2StatorAirCooler = data.FlowGenCwInlet2StatorAirCooler;
TempGenCwAirCoolerOut = data.TempGenCwAirCoolerOut;
TempGenCwAirCoolerIn = data.TempGenCwAirCoolerIn;
StatorHotAirTemp1 = data.StatorHotAirTemp1;
StatorColdAirTemp1 = data.StatorColdAirTemp1;
StatorHotAirTemp2 = data.StatorHotAirTemp2;
StatorColdAirTemp2 = data.StatorColdAirTemp2;
StatorHotAirTemp3 = data.StatorHotAirTemp3;
StatorColdAirTemp3 = data.StatorColdAirTemp3;
StatorHotAirTemp4 = data.StatorHotAirTemp4;
StatorColdAirTemp4 = data.StatorColdAirTemp4;
StatorHotAirTemp5 = data.StatorHotAirTemp5;
StatorColdAirTemp5 = data.StatorColdAirTemp5;
StatorHotAirTemp6 = data.StatorHotAirTemp6;
StatorColdAirTemp6 = data.StatorColdAirTemp6;
StatorHotAirTemp7 = data.StatorHotAirTemp7;
StatorColdAirTemp7 = data.StatorColdAirTemp7;
StatorHotAirTemp8 = data.StatorHotAirTemp8;
StatorColdAirTemp8 = data.StatorColdAirTemp8;
StatorHotAirTemp9 = data.StatorHotAirTemp9;
StatorColdAirTemp9 = data.StatorColdAirTemp9;
StatorHotAirTemp10 = data.StatorHotAirTemp10;
StatorColdAirTemp10 = data.StatorColdAirTemp10;
StatorHotAirTemp11 = data.StatorHotAirTemp11;
StatorColdAirTemp11 = data.StatorColdAirTemp11;
StatorHotAirTemp12 = data.StatorHotAirTemp12;
StatorColdAirTemp12 = data.StatorColdAirTemp12;

time = (1/(0.1*height(data)))*(1:height(data))';
MW = timetable(seconds(time), MW);
MVar = timetable(seconds(time), MVar);
Speed = timetable(seconds(time), Speed);
FlowGenCwInlet2StatorAirCooler = timetable(seconds(time), FlowGenCwInlet2StatorAirCooler);
TempGenCwAirCoolerOut = timetable(seconds(time), TempGenCwAirCoolerOut);
TempGenCwAirCoolerIn = timetable(seconds(time), TempGenCwAirCoolerIn);
StatorHotAirTemp1 = timetable(seconds(time), StatorHotAirTemp1);
StatorColdAirTemp1 = timetable(seconds(time), StatorColdAirTemp1);
StatorHotAirTemp2 = timetable(seconds(time), StatorHotAirTemp2);
StatorColdAirTemp2 = timetable(seconds(time), StatorColdAirTemp2);
StatorHotAirTemp3 = timetable(seconds(time), StatorHotAirTemp3);
StatorColdAirTemp3 = timetable(seconds(time), StatorColdAirTemp3);
StatorHotAirTemp4 = timetable(seconds(time), StatorHotAirTemp4);
StatorColdAirTemp4 = timetable(seconds(time), StatorColdAirTemp4);
StatorHotAirTemp5 = timetable(seconds(time), StatorHotAirTemp5);
StatorColdAirTemp5 = timetable(seconds(time), StatorColdAirTemp5);
StatorHotAirTemp6 = timetable(seconds(time), StatorHotAirTemp6);
StatorColdAirTemp6 = timetable(seconds(time), StatorColdAirTemp6);
StatorHotAirTemp7 = timetable(seconds(time), StatorHotAirTemp7);
StatorColdAirTemp7 = timetable(seconds(time), StatorColdAirTemp7);
StatorHotAirTemp8 = timetable(seconds(time), StatorHotAirTemp8);
StatorColdAirTemp8 = timetable(seconds(time), StatorColdAirTemp8);
StatorHotAirTemp9 = timetable(seconds(time), StatorHotAirTemp9);
StatorColdAirTemp9 = timetable(seconds(time), StatorColdAirTemp9);
StatorHotAirTemp10 = timetable(seconds(time), StatorHotAirTemp10);
StatorColdAirTemp10 = timetable(seconds(time), StatorColdAirTemp10);
StatorHotAirTemp11 = timetable(seconds(time), StatorHotAirTemp11);
StatorColdAirTemp11 = timetable(seconds(time), StatorColdAirTemp11);
StatorHotAirTemp12 = timetable(seconds(time), StatorHotAirTemp12);
StatorColdAirTemp12 = timetable(seconds(time), StatorColdAirTemp12);

ds = Simulink.SimulationData.Dataset;
ds =ds.add(MW,'var1');
ds =ds.add(MVar,'var2');
ds =ds.add(Speed,'var3');
ds =ds.add(FlowGenCwInlet2StatorAirCooler,'var4');
ds =ds.add(TempGenCwAirCoolerOut,'var5');
ds =ds.add(TempGenCwAirCoolerIn,'var6');
ds =ds.add(StatorHotAirTemp1,'var7');
ds =ds.add(StatorColdAirTemp1,'var8');
ds =ds.add(StatorHotAirTemp2,'var9');
ds =ds.add(StatorColdAirTemp2,'var10');
ds =ds.add(StatorHotAirTemp3,'var11');
ds =ds.add(StatorColdAirTemp3,'var12');
ds =ds.add(StatorHotAirTemp4,'var13');
ds =ds.add(StatorColdAirTemp4,'var14');
ds =ds.add(StatorHotAirTemp5,'var15');
ds =ds.add(StatorColdAirTemp5,'var16');
ds =ds.add(StatorHotAirTemp6,'var17');
ds =ds.add(StatorColdAirTemp6,'var18');
ds =ds.add(StatorHotAirTemp7,'var19');
ds =ds.add(StatorColdAirTemp7,'var20');
ds =ds.add(StatorHotAirTemp8,'var21');
ds =ds.add(StatorColdAirTemp8,'var22');
ds =ds.add(StatorHotAirTemp9,'var23');
ds =ds.add(StatorColdAirTemp9,'var24');
ds =ds.add(StatorHotAirTemp10,'var25');
ds =ds.add(StatorColdAirTemp10,'var26');
ds =ds.add(StatorHotAirTemp11,'var27');
ds =ds.add(StatorColdAirTemp11,'var28');
ds =ds.add(StatorHotAirTemp12,'var29');
ds =ds.add(StatorColdAirTemp12,'var30');
close(curs)

%% Close connection to database
close(conn)

%% Restore preferences
setdbprefs('DataReturnFormat',prefs)

%% Clear variables
clear prefs conn curs