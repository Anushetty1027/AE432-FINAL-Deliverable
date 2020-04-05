V=33.4389; %m/s converted from the given knots 
H=150; %m (has to be between (65m<x<300m)
G=0; %path angle
[X0,U0]=air3m('AirtrimPioneer',V,H,G)

