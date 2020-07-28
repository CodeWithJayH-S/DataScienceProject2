
%Task 1 read in and find missing values still need to do missingvalues bit
%opts = detectImportOptions('clinicalfeatures.xlsx');
data = dataset('XLSFile',fullfile('clinicalfeatures.xlsx'));

%data = readtable('clinicalfeatures.xlsx',opts);

fprintf('This displays the correct number of columns %d\n',size(data, 2));
fprintf('This displays the correct number of rows %d\n' ,size(data, 1));

missingData = ismissing (data);
fprintf('This displays the correct number of columns %d\n',size(data, 2));
fprintf('This displays the correct number of rows %d\n' ,size(data, 1));
%Task2

group1 = data(data.Classification==1,:);
group2 = data(data.Classification==2,:);

data = readtable('clinicalfeatures.xlsx');
data.Properties.VariableNames = {'Age','BMI','Glucose','Insulin','HOMA','Leptin','Adiponectin','Resistin','MCP_1','Classification'};

%GROUP 1 MAKING TABLE WITH FEATURES
disp(mean(group1.Age));
disp(median(group1.Age));
disp(min(group1.Age));
disp(max(group1.Age));
disp(mode(group1.Age));
disp(var(group1.Age));

disp(mean(group1.BMI));
disp(median(group1.BMI));
disp(min(group1.BMI));
disp(max(group1.BMI));
disp(mode(group1.BMI));
disp(var(group1.BMI));

disp(mean(group1.Glucose));
disp(median(group1.Glucose));
disp(min(group1.Glucose));
disp(max(group1.Glucose));
disp(mode(group1.Glucose));
disp(var(group1.Glucose));

disp(mean(group1.Insulin));
disp(median(group1.Insulin));
disp(min(group1.Insulin));
disp(max(group1.Insulin));
disp(mode(group1.Insulin));
disp(var(group1.Insulin));

disp(mean(group1.HOMA));
disp(median(group1.HOMA));
disp(min(group1.HOMA));
disp(max(group1.HOMA));
disp(mode(group1.HOMA));
disp(var(group1.HOMA));

disp(mean(group1.Leptin));
disp(median(group1.Leptin));
disp(min(group1.Leptin));
disp(max(group1.Leptin));
disp(mode(group1.Leptin));
disp(var(group1.Leptin));

disp(mean(group1.Adiponectin));
disp(median(group1.Adiponectin));
disp(min(group1.Adiponectin));
disp(max(group1.Adiponectin));
disp(mode(group1.Adiponectin));
disp(var(group1.Adiponectin));

disp(mean(group1.Resistin));
disp(median(group1.Resistin));
disp(min(group1.Resistin));
disp(max(group1.Resistin));
disp(mode(group1.Resistin));
disp(var(group1.Resistin));

disp(mean(group1.MCP_1));
disp(median(group1.MCP_1));
disp(min(group1.MCP_1));
disp(max(group1.MCP_1));
disp(mode(group1.MCP_1));
disp(var(group1.MCP_1));

%Table for Both classification 1 and 2 together(No seperations of spreadsheet data).
dataSpreadsheet = table({mean(data.Age); median(data.Age); min(data.Age); max(data.Age); mode(data.Age); var(data.Age)},{mean(data.BMI);median(data.BMI); min(data.BMI); max(data.BMI); mode(data.BMI); var(data.BMI)},{mean(data.Glucose); median(data.Glucose); min(data.Glucose); max(data.Glucose); mode(data.Glucose); var(data.Glucose)},{mean(data.Insulin); median(data.Insulin); min(data.Insulin); max(data.Insulin); mode(data.Insulin); var(data.Insulin)},{mean(data.HOMA);median(data.HOMA); min(data.HOMA); max(data.HOMA); mode(data.HOMA); var(data.HOMA)},{mean(data.Leptin);median(data.Leptin); min(data.Leptin); max(data.Leptin); mode(data.Leptin); var(data.Leptin)},{mean(data.Adiponectin);median(data.Adiponectin); min(data.Adiponectin); max(data.Adiponectin); mode(data.Adiponectin); var(data.Adiponectin)},{mean(data.Resistin); median(data.Resistin); min(data.Resistin); max(data.Resistin); mode(data.Resistin); var(data.Resistin)},{mean(data.MCP_1); median(data.MCP_1); min(data.MCP_1); max(data.MCP_1); mode(data.MCP_1); var(data.MCP_1)});
dataSpreadsheet.Properties.VariableNames = {'Age','BMI','Glucose','Insulin','HOMA','Leptin','Adiponectin','Resistin','MCP_1'};


%Table for Group 1 CLASSIFICATION 1 with features:
datagroup1 = table({mean(group1.Age); median(group1.Age); min(group1.Age); max(group1.Age); mode(group1.Age); var(group1.Age)},{mean(group1.BMI);median(group1.BMI); min(group1.BMI); max(group1.BMI); mode(group1.BMI); var(group1.BMI)},{mean(group1.Glucose); median(group1.Glucose); min(group1.Glucose); max(group1.Glucose); mode(group1.Glucose); var(group1.Glucose)},{mean(group1.Insulin); median(group1.Insulin); min(group1.Insulin); max(group1.Insulin); mode(group1.Insulin); var(group1.Insulin)},{mean(group1.HOMA);median(group1.HOMA); min(group1.HOMA); max(group1.HOMA); mode(group1.HOMA); var(group1.HOMA)},{mean(group1.Leptin);median(group1.Leptin); min(group1.Leptin); max(group1.Leptin); mode(group1.Leptin); var(group1.Leptin)},{mean(group1.Adiponectin);median(group1.Adiponectin); min(group1.Adiponectin); max(group1.Adiponectin); mode(group1.Adiponectin); var(group1.Adiponectin)},{mean(group1.Resistin); median(group1.Resistin); min(group1.Resistin); max(group1.Resistin); mode(group1.Resistin); var(group1.Resistin)},{mean(group1.MCP_1); median(group1.MCP_1); min(group1.MCP_1); max(group1.MCP_1); mode(group1.MCP_1); var(group1.MCP_1)});
datagroup1.Properties.VariableNames = {'Age','BMI','Glucose','Insulin','HOMA','Leptin','Adiponectin','Resistin','MCP_1'};


%Table for Group 2 CLASSIFICATION 2 with features:
datagroup2 = table({mean(group2.Age); median(group2.Age); min(group2.Age); max(group2.Age); mode(group2.Age); var(group2.Age)},{mean(group2.BMI);median(group2.BMI); min(group2.BMI); max(group2.BMI); mode(group2.BMI); var(group2.BMI)},{mean(group2.Glucose); median(group2.Glucose); min(group2.Glucose); max(group2.Glucose); mode(group2.Glucose); var(group2.Glucose)},{mean(group2.Insulin); median(group2.Insulin); min(group2.Insulin); max(group2.Insulin); mode(group2.Insulin); var(group2.Insulin)},{mean(group2.HOMA);median(group2.HOMA); min(group2.HOMA); max(group2.HOMA); mode(group2.HOMA); var(group2.HOMA)},{mean(group2.Leptin);median(group2.Leptin); min(group2.Leptin); max(group2.Leptin); mode(group2.Leptin); var(group2.Leptin)},{mean(group2.Adiponectin);median(group2.Adiponectin); min(group2.Adiponectin); max(group2.Adiponectin); mode(group2.Adiponectin); var(group2.Adiponectin)},{mean(group2.Resistin); median(group2.Resistin); min(group2.Resistin); max(group2.Resistin); mode(group2.Resistin); var(group2.Resistin)},{mean(group2.MCP_1); median(group2.MCP_1); min(group2.MCP_1); max(group2.MCP_1); mode(group2.MCP_1); var(group2.MCP_1)});
datagroup2.Properties.VariableNames = {'Age','BMI','Glucose','Insulin','HOMA','Leptin','Adiponectin','Resistin','MCP_1'};

%Task 2 Box plots: 
%Box plots for Age
figure;
boxplot(group1.Age);
title('Box plot: Displaying data for Age:');

figure;
boxplot(group2.Age);
title('Box plot: Displaying data for Age:');

%Box plots for BMI
figure;
boxplot(group1.BMI);
title('Box plot: Displaying data for BMI:');

figure;
boxplot(group2.BMI);
title('Box plot: Displaying data for BMI:');

%Box plots for Glucose
figure;
boxplot(group1.Glucose);
title('Box plot: Displaying data for Glucose:');

figure;
boxplot(group2.Glucose);
title('Box plot: Displaying data for Glucose:');

%Box plots for Insulin
figure;
boxplot(group1.Insulin);
title('Box plot: Displaying data for Insulin:');

figure;
boxplot(group2.Insulin);
title('Box plot: Displaying data for Insulin:');

%Box plots for Homa
figure;
boxplot(group1.HOMA);
title('Box plot: Displaying data for Homa:');

figure;
boxplot(group2.HOMA);
title('Box plot: Displaying data for Homa:');

%Box plots for Leptin
figure;
boxplot(group1.Leptin);
title('Box plot: Displaying data for Leptin:');

figure;
boxplot(group2.Leptin);
title('Box plot: Displaying data for Leptin:');

%Box plots for Adiponectin
figure;
boxplot(group1.Adiponectin);
title('Box plot: Displaying data for Adiponectin:');

figure;
boxplot(group2.Adiponectin);
title('Box plot: Displaying data for Adiponectin:');

%Box plots for Resistin
figure;
boxplot(group1.Resistin);
title('Box plot: Displaying data for Resistin:');

figure;
boxplot(group2.Resistin);
title('Box plot: Displaying data for Resistin:');

%Box plots for MCP_1
figure;
boxplot(group1.MCP_1);
title('Box plot: Displaying data for MCP_1:');

figure;
boxplot(group2.MCP_1);
title('Box plot: Displaying data for MCP_1:');


%TASK 2 ALTERNATIVE MANUAL DATA ENTRY METHOD:
%group1.Glucose, group1.Insulin, group1.HOMA, group1.Leptin, group1.Adiponectin, group1.MCP_1);
%Age = corr(group1.Age);
%BMI = corr(group1.BMI);

%type clinicalfeatures.xlsx;
%Task 2

%data.Age = uint8(data.Age);
%data.BMI = uint8(data.BMI);
%data.Glucose = uint8(data.Glucose);
%data.Insulin = uint8(data.Insulin);
%data.HOMA = uint8(data.HOMA );
%data.Leptin = uint8(data.Leptin);
%data.Adiponectin = uint8(data.Adiponectin);
%data.Resistin = uint8(data.Resistin);
%(data.MCP=uint8(data.MCP.1));
%data.Classification = uint8(data.Classification);
%data(1:10,1:52);

%Task 2 Splitting the data manually/different method
%data = {
%            {'Age',48,83,82,68,86,49,89,76,73,75}
%            {'BMI',1,2,3,4,5,6,7,8,9,0}
%             {'Glucose',1,2,3,4,5,6,7,8,9,0}
            
%   };
%Patient = cat( 1, data{:} );
%mytable = cell2table( Patient );

%Task 2 final
%data = dataR2;


%Task 3
%Correlations for Group1: Age
correlation1 = corr(group1.Age, group1.BMI);            correlation2 = corr(group1.Age, group1.Glucose);      correlation3 = corr(group1.Age, group1.Insulin); 
correlation4 = corr(group1.Age, group1.HOMA);           correlation5 = corr(group1.Age, group1.Leptin);       correlation6 = corr(group1.Age, group1.Adiponectin);
correlation7 = corr(group1.Age, group1.Resistin);       correlation8 = corr(group1.Age, group1.MCP_1);

%Correlations for Group1: BMI
correlation9 = corr(group1.BMI, group1.Age);            correlation10 = corr(group1.BMI, group1.Glucose);     correlation11 = corr(group1.BMI, group1.Insulin); 
correlation12 = corr(group1.BMI, group1.HOMA);          correlation13 = corr(group1.BMI, group1.Leptin);      correlation14 = corr(group1.BMI, group1.Adiponectin);
correlation15 = corr(group1.BMI, group1.Resistin);      correlation16 = corr(group1.BMI, group1.MCP_1);

%Correlations for Group1: Glucose
correlation17 = corr(group1.Glucose, group1.Age);       correlation18 = corr(group1.Glucose, group1.BMI);     correlation19 = corr(group1.Glucose, group1.Insulin); 
correlation20 = corr(group1.Glucose, group1.HOMA);      correlation21 = corr(group1.Glucose, group1.Leptin);  correlation22 = corr(group1.Glucose, group1.Adiponectin);
correlation23 = corr(group1.Glucose, group1.Resistin);  correlation24 = corr(group1.Glucose, group1.MCP_1);

%Correlations for Group1: Insulin
correlation25 = corr(group1.Insulin, group1.Age);       correlation26 = corr(group1.Insulin, group1.BMI);     correlation27 = corr(group1.Insulin, group1.Glucose); 
correlation28 = corr(group1.Insulin, group1.HOMA);      correlation29 = corr(group1.Insulin, group1.Leptin);  correlation30 = corr(group1.Insulin, group1.Adiponectin);
correlation31 = corr(group1.Insulin, group1.Resistin);  correlation32 = corr(group1.Insulin, group1.MCP_1);

%Correlations for Group1: HOMA

correlation33 = corr(group1.HOMA, group1.Age);          correlation34 = corr(group1.HOMA, group1.BMI);        correlation35 = corr(group1.HOMA, group1.Glucose); 
correlation36 = corr(group1.HOMA, group1.Insulin);      correlation37 = corr(group1.HOMA, group1.Leptin);     correlation38 = corr(group1.HOMA, group1.Adiponectin);
correlation39 = corr(group1.HOMA, group1.Resistin);     correlation40 = corr(group1.HOMA, group1.MCP_1);

%Correlations for Group1: Leptin

correlation41 = corr(group1.Leptin, group1.Age);        correlation42 = corr(group1.Leptin, group1.BMI);      correlation43 = corr(group1.Leptin, group1.Glucose); 
correlation44 = corr(group1.Leptin, group1.Insulin);    correlation45 = corr(group1.Leptin, group1.HOMA);     correlation46 = corr(group1.Leptin, group1.Adiponectin);
correlation47 = corr(group1.Leptin, group1.Resistin);   correlation48 = corr(group1.Leptin, group1.MCP_1);

%Correlations for Group1: Adiponectin

correlation49 = corr(group1.Adiponectin, group1.Age);        correlation50 = corr(group1.Adiponectin, group1.BMI);      correlation51 = corr(group1.Adiponectin, group1.Glucose); 
correlation52 = corr(group1.Adiponectin, group1.Insulin);    correlation53 = corr(group1.Adiponectin, group1.HOMA);     correlation54 = corr(group1.Adiponectin, group1.Leptin);
correlation55 = corr(group1.Adiponectin, group1.Resistin);   correlation56 = corr(group1.Adiponectin, group1.MCP_1);

%Correlations for Group1: Resistin

correlation57 = corr(group1.Resistin, group1.Age);         correlation58 = corr(group1.Resistin, group1.BMI);      correlation59 = corr(group1.Resistin, group1.Glucose); 
correlation60 = corr(group1.Resistin, group1.Insulin);     correlation61 = corr(group1.Resistin, group1.HOMA);     correlation62 = corr(group1.Resistin, group1.Leptin);
correlation63 = corr(group1.Resistin, group1.Adiponectin); correlation64 = corr(group1.Resistin, group1.MCP_1);

%Correlations for Group1: MCP_1

correlation65 = corr(group1.MCP_1, group1.Age);          correlation66 = corr(group1.MCP_1, group1.BMI);      correlation67 = corr(group1.MCP_1, group1.Glucose); 
correlation68 = corr(group1.MCP_1, group1.Insulin);      correlation69 = corr(group1.MCP_1, group1.HOMA);     correlation70 = corr(group1.MCP_1, group1.Leptin);
correlation71 = corr(group1.MCP_1, group1.Adiponectin);  correlation72 = corr(group1.MCP_1, group1.Resistin); 


%Table for Group 1 CLASSIFICATION 1 with features:
%AGE and BMI for table
%correlationTable = table(correlation1(group1.Age, group1.BMI), correlation2(group1.Age, group1.Glucose), correlation3(group1.Age, group1.Insulin), correlation4(group1.Age, group1.HOMA), correlation5(group1.Age, group1.Leptin), correlation6(group1.Age, group1.Adiponectin), correlation7(group1.Age, group1.Resistin), correlation8(group1.Age, group1.MCP_1);
    
%correlation9(group1.BMI, group1.Age), correlation10(group1.BMI, group1.Glucose), correlation11(group1.BMI, group1.Insulin), correlation12(group1.BMI, group1.HOMA), correlation13(group1.BMI, group1.Leptin), correlation14(group1.BMI, group1.Adiponectin), correlation15(group1.BMI, group1.Resistin), correlation16(group1.BMI, group1.MCP_1);
%talk about how task 3 trhu errors cos of semi colons but worked for
%first set of tables, show how u tackled the problem.
%Glucose and Insulin for table
%correlation17(group1.Glucose, group1.Age), correlation18(group1.Glucose, group1.BMI), correlation19(group1.Glucose, group1.Insulin), correlation20(group1.Glucose, group1.HOMA), correlation21(group1.Glucose, group1.Leptin), correlation22(group1.Glucose, group1.Adiponectin), correlation23(group1.Glucose, group1.Resistin), correlation24(group1.Glucose, group1.MCP_1);

%correlation25(group1.Insulin, group1.Age), correlation26(group1.Insulin, group1.BMI), correlation27(group1.Insulin, group1.Glucose), correlation28(group1.Insulin, group1.HOMA), correlation29(group1.Insulin, group1.Leptin), correlation30(group1.Insulin, group1.Adiponectin), correlation31(group1.Insulin, group1.Resistin), correlation32(group1.Insulin, group1.MCP_1);
%Homa and Leptin for table
%correlation33(group1.HOMA, group1.Age), correlation34(group1.HOMA, group1.BMI), correlation35(group1.HOMA, group1.Glucose), correlation36(group1.HOMA, group1.Insulin), correlation37(group1.HOMA, group1.Leptin), correlation38(group1.HOMA, group1.Adiponectin), correlation39(group1.HOMA, group1.Resistin), correlation40(group1.HOMA, group1.MCP_1);

%correlation41(group1.Leptin, group1.Age), correlation42(group1.Leptin, group1.BMI), correlation43(group1.Leptin, group1.Glucose), correlation44(group1.Leptin, group1.Insulin), correlation45(group1.Leptin, group1.HOMA), correlation46(group1.Leptin, group1.Adiponectin), correlation47(group1.Leptin, group1.Resistin), correlation48(group1.Leptin, group1.MCP_1);
    

%Adiponectin and Resistin for table
%correlation49(group1.Adiponectin, group1.Age), correlation50(group1.Adiponectin, group1.BMI), correlation51(group1.Adiponectin, group1.Glucose), correlation52(group1.Adiponectin, group1.Insulin), correlation53(group1.Adiponectin, group1.HOMA), correlation54(group1.Adiponectin, group1.Leptin), correlation55(group1.Adiponectin, group1.Resistin), correlation56(group1.Adiponectin, group1.MCP_1);
   

%correlation57(group1.Resistin, group1.Age), correlation58(group1.Resistin, group1.BMI), correlation59(group1.Resistin, group1.Glucose), correlation60(group1.Resistin, group1.Insulin), correlation61(group1.Resistin, group1.HOMA), correlation62(group1.Resistin, group1.Leptin), correlation63(group1.Resistin, group1.Adiponectin), correlation64(group1.Resistin, group1.MCP_1);
%MCP_1 for table
%correlation65(group1.MCP_1, group1.Age), correlation66(group1.MCP_1, group1.BMI), correlation67(group1.MCP_1, group1.Glucose), correlation68(group1.MCP_1, group1.Insulin), correlation69corr(group1.MCP_1, group1.HOMA), correlation70(group1.MCP_1, group1.Leptin), correlation71(group1.MCP_1, group1.Adiponectin), correlation72(group1.MCP_1, group1.Resistin));


%correlationTable.Properties.VariableNames = {'Age','BMI','Glucose','Insulin','HOMA','Leptin','Adiponectin','Resistin','MCP_1'};


%Task 3 GROUP 2
%Correlations for Group2: Age
group2corr1 = corr(group2.Age, group2.BMI);            group2corr2 = corr(group2.Age, group2.Glucose);      group2corr3 = corr(group2.Age, group2.Insulin); 
group2corr4 = corr(group2.Age, group2.HOMA);           group2corr5 = corr(group2.Age, group2.Leptin);       group2corr6 = corr(group2.Age, group2.Adiponectin);
group2corr7 = corr(group2.Age, group2.Resistin);       group2corr8 = corr(group2.Age, group2.MCP_1);

%Correlations for Group2: BMI
group2corr9 = corr(group2.BMI, group2.Age);            group2corr10 = corr(group2.BMI, group2.Glucose);     group2corr11 = corr(group2.BMI, group2.Insulin); 
group2corr12 = corr(group2.BMI, group2.HOMA);          group2corr13 = corr(group2.BMI, group2.Leptin);      group2corr14 = corr(group2.BMI, group2.Adiponectin);
group2corr15 = corr(group2.BMI, group2.Resistin);      group2corr16 = corr(group2.BMI, group2.MCP_1);

%Correlations for Group2: Glucose
group2corr17 = corr(group2.Glucose, group2.Age);       group2corr18 = corr(group2.Glucose, group2.BMI);     group2corr19 = corr(group2.Glucose, group2.Insulin); 
group2corr20 = corr(group2.Glucose, group2.HOMA);      group2corr21 = corr(group2.Glucose, group2.Leptin);  group2corr22 = corr(group2.Glucose, group2.Adiponectin);
group2corr23 = corr(group2.Glucose, group2.Resistin);  group2corr24 = corr(group2.Glucose, group2.MCP_1);

%Correlations for Group2: Insulin
group2corr25 = corr(group2.Insulin, group2.Age);       group2corr26 = corr(group2.Insulin, group2.BMI);     group2corr27 = corr(group2.Insulin, group2.Glucose); 
group2corr28 = corr(group2.Insulin, group2.HOMA);      group2corr29 = corr(group2.Insulin, group2.Leptin);  group2corr30 = corr(group2.Insulin, group2.Adiponectin);
group2corr31 = corr(group2.Insulin, group2.Resistin);  group2corr32 = corr(group2.Insulin, group2.MCP_1);

%Correlations for Group2: HOMA

group2corr33 = corr(group2.HOMA, group2.Age);          group2corr34 = corr(group2.HOMA, group2.BMI);        group2corr35 = corr(group2.HOMA, group2.Glucose); 
group2corr36 = corr(group2.HOMA, group2.Insulin);      group2corr37 = corr(group2.HOMA, group2.Leptin);     group2corr38 = corr(group2.HOMA, group2.Adiponectin);
group2corr39 = corr(group2.HOMA, group2.Resistin);     group2corr40 = corr(group2.HOMA, group2.MCP_1);

%Correlations for Group2: Leptin

group2corr41 = corr(group2.Leptin, group2.Age);        group2corr42 = corr(group2.Leptin, group2.BMI);      group2corr43 = corr(group2.Leptin, group2.Glucose); 
group2corr44 = corr(group2.Leptin, group2.Insulin);    group2corr45 = corr(group2.Leptin, group2.HOMA);     group2corr46 = corr(group2.Leptin, group2.Adiponectin);
group2corr47 = corr(group2.Leptin, group2.Resistin);   group2corr48 = corr(group2.Leptin, group2.MCP_1);

%Correlations for Group2: Adiponectin

group2corr49 = corr(group2.Adiponectin, group2.Age);        group2corr50 = corr(group2.Adiponectin, group2.BMI);      group2corr51 = corr(group2.Adiponectin, group2.Glucose); 
group2corr52 = corr(group2.Adiponectin, group2.Insulin);    group2corr53 = corr(group2.Adiponectin, group2.HOMA);     group2corr54 = corr(group2.Adiponectin, group2.Leptin);
group2corr55 = corr(group2.Adiponectin, group2.Resistin);   group2corr56 = corr(group2.Adiponectin, group2.MCP_1);

%Correlations for Group2: Resistin

group2corr57 = corr(group2.Resistin, group2.Age);         group2corr58 = corr(group2.Resistin, group2.BMI);      group2corr59 = corr(group2.Resistin, group2.Glucose); 
group2corr60 = corr(group2.Resistin, group2.Insulin);     group2corr61 = corr(group2.Resistin, group2.HOMA);     group2corr62 = corr(group2.Resistin, group2.Leptin);
group2corr63 = corr(group2.Resistin, group2.Adiponectin); group2corr64 = corr(group2.Resistin, group2.MCP_1);

%Correlations for Group2: MCP_1

group2corr65 = corr(group2.MCP_1, group2.Age);          group2corr66 = corr(group2.MCP_1, group2.BMI);      group2corr67 = corr(group2.MCP_1, group2.Glucose); 
group2corr68 = corr(group2.MCP_1, group2.Insulin);      group2corr69 = corr(group2.MCP_1, group2.HOMA);     group2corr70 = corr(group2.MCP_1, group2.Leptin);
group2corr71 = corr(group2.MCP_1, group2.Adiponectin);  group2corr72 = corr(group2.MCP_1, group2.Resistin);

correlationTable = table(correlation1,correlation2,correlation3,correlation4,correlation5,correlation6,correlation7,correlation8, correlation9,correlation10,correlation11,correlation12,correlation13,correlation14,correlation15,correlation16,correlation17,correlation18,correlation19,correlation20,correlation21,correlation22,correlation23,correlation24,correlation25,correlation26,correlation27,correlation28,correlation29,correlation30,correlation31,correlation32,correlation33,correlation34,correlation35,correlation36,correlation37,correlation38,correlation39,correlation40,correlation41,correlation42,correlation43,correlation44,correlation45,correlation46,correlation47,correlation48,correlation49,correlation50,correlation51,correlation52,correlation53,correlation54,correlation55,correlation56,correlation57,correlation58,correlation59,correlation60,correlation61,correlation62,correlation63,correlation64,correlation65,correlation66,correlation67,correlation68,correlation69,correlation70,correlation71,correlation72);

%correlationTable = table({(correlation1),(correlation2),(correlation3),(correlation4),(correlation5),(correlation6),(correlation7),(correlation8); (correlation9),(correlation10),(correlation11),(correlation12),(correlation13),(correlation14),(correlation15),(correlation16);(correlation17),(correlation18),(correlation19),(correlation20),(correlation21),(correlation22),(correlation23),(correlation24);(correlation25),correlation26,correlation27,correlation28,correlation29,correlation30,correlation31,correlation32,correlation33,correlation34,correlation35,correlation36,correlation37,correlation38,correlation39,correlation40,correlation41,correlation42,correlation43,correlation44,correlation45,correlation46,correlation47,correlation48,correlation49,correlation50,correlation51,correlation52,correlation53,correlation54,correlation55,correlation56,correlation57,correlation58,correlation59,correlation60,correlation61,correlation62,correlation63,correlation64,correlation65,correlation66,correlation67,correlation68,correlation69,correlation70,correlation71,correlation72});
%TESTcorrelationTable = table(correlation1);(correlation2);(correlation3);(correlation4);(correlation5);(correlation6);(correlation7);(correlation8), (correlation9);(correlation10);(correlation11);(correlation12);(correlation13);(correlation14);(correlation15);(correlation16)};
%TESTcorrelationTable.Properties.VariableNames = {'Age','BMI'};
%correlationTable.Properties.VariableNames = {'Age','BMI','Glucose','Insulin','HOMA','Leptin','Adiponectin','Resistin','MCP_1'};
%dataSpreadsheet = table({mean(data.Age); median(data.Age); min(data.Age); max(data.Age); mode(data.Age); var(data.Age)},{mean(data.BMI);median(data.BMI); min(data.BMI); max(data.BMI); mode(data.BMI); var(data.BMI)},{mean(data.Glucose); median(data.Glucose); min(data.Glucose); max(data.Glucose); mode(data.Glucose); var(data.Glucose)},{mean(data.Insulin); median(data.Insulin); min(data.Insulin); max(data.Insulin); mode(data.Insulin); var(data.Insulin)},{mean(data.HOMA);median(data.HOMA); min(data.HOMA); max(data.HOMA); mode(data.HOMA); var(data.HOMA)},{mean(data.Leptin);median(data.Leptin); min(data.Leptin); max(data.Leptin); mode(data.Leptin); var(data.Leptin)},{mean(data.Adiponectin);median(data.Adiponectin); min(data.Adiponectin); max(data.Adiponectin); mode(data.Adiponectin); var(data.Adiponectin)},{mean(data.Resistin); median(data.Resistin); min(data.Resistin); max(data.Resistin); mode(data.Resistin); var(data.Resistin)},{mean(data.MCP_1); median(data.MCP_1); min(data.MCP_1); max(data.MCP_1); mode(data.MCP_1); var(data.MCP_1)});

%Task 3 Nested loops

%for i= corr(group1):corr(group2)
%    for j= A1:I117
%        fprintf( '%5d',j);
%     end
%     fprintf('\n');
%end

%for i= corr(group1.Age, group1.BMI):corr(group1.MCP_1, group1.Resistin)
%    for j= corr(group2.Age, group2.BMI):corr(group2.MCP_1, group2.Resistin)
%         fprintf( '%5d',j);
%     end
%     fprintf('\n');
%end


%TASK 4
[a,b]=size(data); % take the table as source because i want to display it later on
shuffle=randperm(a); 
randomSort=data;
for i=1:b 
    for j=1:a 
    shuffle=randperm(a) ;
    randomSort(shuffle,:)=data;
    end
end
percentage=.7; % persentage split
bRow=size(randomSort,1);% total number of rows
rVec=false(bRow,1); % index vector for the rows to be split
rVec(1:round(percentage*bRow))=true;

traindata=randomSort(rvec,:);
testdata=randomSort(~rvec,:);

disp(randomSort);

%data4 = dataset(ones(20,3));  % some test data
%probability = .7;      % proportion of rows to select for training
%number = size(data4,1);  % total number of rows 
%tf = false(number,1);    % create logical index vector
%tf(1:round(probability*number)) = true;     
%tf = tf(randperm(number));   % randomise order
%dataTraining = data4(tf,:); 
%dataTesting = data4(~tf,:);


%PD = 0.70 ;  % percentage 80%
%Ptrain = data(1:round(PD*size(data)),:) ; Ttrain = data(1:round(PD*size(data))) ;
%Ptest = data(round(PD*size(data)):end,:) ;Ttest = data(round(PD*size(data)):end) ;




%[a,b]=size(data); % take the table as source because i want to display it later on
%shuffle = randperm(a); 
%randomSort = data;
%for i = 1:b 
%    for j = 1:a 
%    shuffle = randperm(a) ;
 %   randomSort(shuffle,:) = data;
  %  end
%end
%percentage=.7; % persentage split
%bRow=size(randomSort,1);% total number of rows
%rVec=false(bRow,1); % index vector for the rows to be split
%rVec(1:round(percentage*bRow))=true;

%traindata=shuffleddata(rvec,:);
%testdata=shuffdata(~rvec,:);

%disp(randomSort);






















































































































































































