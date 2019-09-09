number_of_boids = [1 5 10 25 50 75 100];
naivev = [154.764 147.047 72.72 15.5 4.01 1.85 1.00];
scatterv = [133.819 152.306 152.116 150.294 103.368 60.0672 43.5686];
coherentv = [150.787 150.473 166.157 150.463 170.284 123.162 157.798];
naive = [1725 448 118 23.5 6.5 3 1.6];
scatter = [1470 1172.5 800 360 133.225 70.5 47.332];
coherent = [1441 1210 1164 760 402 275 212.1];

plot(number_of_boids, naivev, '--b', 'lineWidth', 1, 'Color','#0072BD'); hold on
plot(number_of_boids, naive, '-b', 'lineWidth', 1 ,'Color', '#0072BD');
plot(number_of_boids,scatterv, '--m', 'lineWidth', 1, 'Color','#D95319');
plot(number_of_boids,scatter, '-m', 'lineWidth', 1 , 'Color','#D95319');
plot(number_of_boids,coherentv, '--r', 'lineWidth', 1, 'Color', '#77AC30');
plot(number_of_boids,coherent, '-r', 'lineWidth', 1,'Color','#77AC30');

legend('naive (vis)', 'naive (no vis)', 'scatter (vis)', 'scatter (no vis)', 'coherent (vis)', 'coherent (no vis)')
xlabel('Number of Boids (Thousands)')
ylabel('FPS')
title('FPS vs. Boid Population')