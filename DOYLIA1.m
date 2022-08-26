clearvars -except out;clc; close all; 
% 
% 
A =out.TimeQuene;
B =out.TimeQuene1;
AB =(B-A);%(1:(size(A,1)-10)));
figure(1)
histogram(AB)
xlabel( 'Χρονος αναμονης στην ουρα' )
ylabel( 'αριθμος προιον' )

D = diff(out.TimeOut);
D1 = diff(out.TimeOut)/60;
figure(2)
histogram(D1)% Σε τι χρονο βγενουν τα μπουκαλια σπασεμαν
xlabel( 'Χρονος min.' )
ylabel( 'αριθμος προιον' )


E = diff(out.TimeOut1);
E = diff(out.TimeOut1)/60;
figure(3)
histogram(E)% Σε τι χρονο βγενουν χαλασμενες ετοικετες 
xlabel( 'Χρονος min.' )
ylabel( 'αριθμος κατεστραμενων τενιων' )

H = diff(out.TimeOut2);
HE = out.TimeOut2(end,1)/3600;
HE1 = round((HE-fix(HE))*60); 
C=strcat(string(fix(HE)),'.',string(HE1));
C=str2double(C)%χρονος υλοποιησης  --h.m--
figure(4)
histogram(H)
xlabel( 'Χρονος sec.' )
ylabel( 'αριθμος τελειωμενου προιον' )


K1 = out.TimeServer1;
K2 = out.TimeServer2;
K11 = diff(K1);
K22 = diff(K2);
KK = K2-K1;%(1:size(K1,1)-1);
figure(5)
histogram(KK)
xlabel( 'Χρονος επεξεργασιας προιον sec.' )
ylabel( 'αριθμος προιον' )
figure(7)
histogram(K11)
xlabel( 'Χρονος εαφυξης sec.' )
ylabel( 'αριθμος προιον' )
figure(6)
histogram(K22)
xlabel( 'Χρονος αναχορισης sec.' )
ylabel( 'αριθμος προιον' )