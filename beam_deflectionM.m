




L   = 0.5;                      
b   = 0.02;                   
h   = 0.01;        

E   = 200e9;       
sigma_yield = 250e6;                 


P   = 100;         


I = (b * h^3) / 12;     



delta_max = (P * L^3) / (3 * E * I);
M_max     = P * L;
sigma_max = (M_max * (h/2)) / I;
safety_factor = sigma_yield / sigma_max;


x = linspace(0, L, 200);
delta_x = (P .* x.^2 .* (3*L - x)) / (6 * E * I);  


fprintf('=========================================\n');
fprintf(' CANTILEVER BEAM — ANALYTICAL RESULTS\n');
fprintf('=========================================\n');
fprintf(' Length (L)            : %.4f m\n', L);
fprintf(' Cross-section (b x h) : %.4f m x %.4f m\n', b, h);
fprintf(' Second moment (I)     : %.6e m^4\n', I);
fprintf(' Load (P)              : %.2f N\n', P);
fprintf('-----------------------------------------\n');
fprintf(' Max deflection        : %.6f mm\n', delta_max * 1000);
fprintf(' Max bending moment    : %.4f N.m\n', M_max);
fprintf(' Max bending stress    : %.4f MPa\n', sigma_max / 1e6);
fprintf(' Safety factor         : %.2f\n', safety_factor);
fprintf('=========================================\n');


figure;
plot(x*1000, delta_x*1000, 'LineWidth', 2, 'Color', [0.55 0.27 0.07]);
grid on;
xlabel('Position along beam, x (mm)');
ylabel('Deflection, \delta (mm)');
title('Cantilever Beam Deflection Curve (Analytical)');
saveas(gcf, '../results/deflection_curve.png');

fprintf('\nPlot saved to results/deflection_curve.png\n');
fprintf('Now run the same geometry/load in SolidWorks Simulation and\n');
fprintf('fill in results/comparison_table.md with both sets of numbers.\n');
