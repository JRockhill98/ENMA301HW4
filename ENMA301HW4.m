%[text] # 1
% I will use

%%
%[text] ## 2
% My thinking revolves around

%%
%[text] ## 3
% Program %

% Initial intensity present: %
I = 10;
% All the indexes, in the order the transmitted light hits them: %
n = [1.0, 1.489, 1.333, 1.460, 1.489, 1.0];
% The absorption values of each material in the list that they are hit: %
Abs = [0.132, 0.097, 0.132, 0.132];
% The depths of each material, in the order the light passes through: %
d = [0.002, 0.01, 0.002, 0.02];

% My loop statement that addresses the length of the situation: %
for t = 1:(length(n)-1) %[output:group:8e45d877]
% Reflectivity values calculated between current and new index: %
    R = ((n(t)-n(t+1)) / (n(t)+n(t+1)))^2;
    T = 1 - R;
% T is the percent of light transmitted, which is multiplied by I present,
% and then later by the absorption value for the material %
    I = I * T;
% This if statement keeps the code from cutting off or continuing weirdly,
% and multiplies by the absorption before displaying the new I between each
% step %
    if t <= length(Abs)
        I = I*exp(-Abs(t)*d(t));
        disp(I) %[output:4daeee71]
    end

end %[output:group:8e45d877]
% This final line displays the transmitted light, Itr, being the I at the
% end of the loop, after it has gone from PMMA to air %
Itr = I;
disp(Itr) %[output:7e074db8]
%%
%[text] ## 4
% Compiled program

%%
%[text] ## 5
% Screenshot?

%%
%[text] ## 6
% I think it will...

%%
%[text] ## 7
% I think it will...


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
%[output:4daeee71]
%   data: {"dataType":"text","outputData":{"text":"    9.6115\n\n    9.5728\n\n    9.5505\n\n    9.5244\n\n","truncated":false}}
%---
%[output:7e074db8]
%   data: {"dataType":"text","outputData":{"text":"    9.1568\n\n","truncated":false}}
%---
