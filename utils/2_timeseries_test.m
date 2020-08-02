time = .1*(0:100)';
ts = timeseries([(1:100)'+10*rand(100,1)]);
ttData = sin(time) + 2*rand(101,1);
tt = timetable(seconds(time), ttData);
