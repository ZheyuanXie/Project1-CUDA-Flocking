# Project 1 - Flocking
**University of Pennsylvania, CIS 565: GPU Programming and Architecture, Project 1 - Flocking**

* Zheyuan Xie
  * [LinkedIn](https://www.linkedin.com/in/zheyuan-xie)
  * [Github](https://github.com/ZheyuanXie)
  * [Personal Website](http://errorspace.cn)
* Tested on: Windows 10 Pro, i7-7700HQ @ 2.80GHz 2.80GHz, 16GB, GTX 1050 2GB (Dell XPS 15 9560)

## Screenshots
| 5,000 Boids | 100,000 Boids |
|--|--|
|![Number of boids: 5k](images/5k_compressed.gif) | ![Number of boids: 100k](images/100k_compressed.gif) |

## Performance Analysis
### 1 Number of Boids
 - For all three methods, performance decrease as the number of boids increase. 
 - The naive method has the best performance when the number of boids are small (below 1.5k), but it decays rapidly as the number of boids increase. 
 - The coherent uniform grid has the best performance when the number of boids are large.

 In the naive method, for each boid we check all other boids. The time complexity is directly O(N^2). In the two grid methods, for each boid we only check its neighboring boids. Though the number of neighboring boids also increase as the popultion scales, but its impact to computation time is much smaller.

![](images/population_fps.jpg)

### 2 Block Size
 - For all three methods, a jump in performance is observed when blocksize is increased from 16 to 32. 
 - Further increasing the blocksize from 32 to 512 has no significant impact in performance.
 
 This is because the warp size is always 32. Having less then 32 threads per block will result in inactive threads in a warp.

![](images/blocksize_fps.jpg)

### 3 Coherent Uniform Grid
Compared with scattered uniform grid, coherent uniform grid has better performance. The performance gap becomes wider as the number of simulation objects increase. This outcome is expected since accessing the device's global memory has long latency.

### 4 Cell Width & Number of Neighboring Cells
Using half the cell width slightly increase the performance. Though the number of cells needs to be check is larger, the actual volume that is checked is smaller, and therefore the number of boids checked is smaller.

||Normal Cell (8 Neighbors)| Half Cell (27 Neighbors)
|--|--|--|
|5k Boids|1256 FPS|1366 FPS|
|10k Boids|798 FPS |1001 FPS|
|50k Boids|139 FPS |151 FPS|
