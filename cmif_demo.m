%   EXAMPLE:
%
%   Input matrix (Y) is seven channels time-signal sampled at 200
%   samples-per-second. Let us use window size as 1024 and fmax as 20. We
%   will use other parameters as default ones. Now let us compute CMIF
%   functions and plot them on semi-log scale to identify fundamental
%   frequencies.
clear; clc; close all;
load input.mat; fs = 200;
[W,CMIF,U,S,V] = cmif_v1(Y,fs,'window',1024,'fmax',20);
figure; semilogy(W,CMIF);
xlabel('Frequency, Hz','FontSize',[18],'fontname','times');
ylabel('CMIF, db','FontSize',[18],'fontname','times');
set(gca,'fontname','times','fontsize',18);
