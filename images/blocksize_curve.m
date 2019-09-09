number_of_boids = [16 32 64 128 256 512];
naive = [16.2377 31.1301 39.1084 36.5137 38.2966 38.1733];
scatter = [390.202 437.727 433.237 427.975 435.234 430.058];
coherent = [670.605 913.866 920.439 940.009 928.573 916.015];
plot(number_of_boids, naive, '.-', 'lineWidth', 1); hold on
plot(number_of_boids,scatter, '.-', 'lineWidth', 1);
plot(number_of_boids,coherent, '.-', 'lineWidth', 1);
legend('naive method', 'scatter grid', 'coherent grid')
xlabel('Blocksize')
ylabel('FPS')
title('Blocksize vs. Boid Population')