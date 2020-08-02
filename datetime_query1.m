%% Automate Importing Data by Generating Code Using the Database Explorer App
% This code reproduces the data obtained using the Database Explorer app by
% connecting to a database, executing a SQL query, and importing data into the
% MATLAB(R) workspace. To use this code, add the password for connecting to the
% database in the database command.

% Auto-generated by MATLAB Version 9.4 (R2018a) and Database Toolbox Version 8.1 on 18-May-2020 11:48:16

%% Set preferences
prefs = setdbprefs('DataReturnFormat');
setdbprefs('DataReturnFormat','table')

%% Make connection to database
conn = database('MySQL','vrk','');

%% Execute query and fetch results
curs = exec(conn,['SELECT * ' ...
    'FROM snr_h3.snr_h03 ' ...
    'WHERE Date(rec_date) = ''2020-05-17''  AND  id > 100000']);
curs = fetch(curs);
data = curs.Data;
close(curs)

%% Close connection to database
close(conn)

%% Restore preferences
setdbprefs('DataReturnFormat',prefs)

%% Clear variables
clear prefs conn curs