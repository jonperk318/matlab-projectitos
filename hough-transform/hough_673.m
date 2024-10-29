% structure for Hough homework
%% -----------------------------------------------------------------------------
% edge detection

img = imread(fullfile('input', 'square2x2.png'));
%% TODO: compute edge image img_edges
imwrite(img_edges, fullfile('output', 'square_edges.png'));

figure, imshow (img_edges), title ('edges')
fprintf('Program paused. Press enter to continue.\n');
pause;

%% -----------------------------------------------------------------------------
% accumulator array

[H, theta, rho] = hough_lines_acc (img_edges);         % see `hough_lines_acc.m`
% TODO: build H_img, an image of your accumulator array (Matlab has a function)
imwrite (H_img, fullfile ('output', 'square_acc.png'));

figure, imshow (H_img), title ('accumulator array')
fprintf('Program paused. Press enter to continue.\n');
pause;

%% -----------------------------------------------------------------------------
% peaks

peaks = hough_peaks(H, 10);                                  % see associated fn
draw_highlighted_peaks (H_img, peaks, theta, rho);           % see associated fn
print (fullfile ('output', 'square_peaks.png'),'-dpng'); % outputs displayed img

fprintf('Program paused. Press enter to continue.\n');
pause;

%% -----------------------------------------------------------------------------
% lines

hough_lines_draw (img, fullfile('output', 'square_lines.png'),peaks,rho,theta);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% -----------------------------------------------------------------------------
% this completes Part 1
% ADD CODE FOR PARTS 2 and 3 HERE, MIMICKING THE ABOVE CODE 
% BUT WITH ADDITIONAL PREPROCESSING AND DIFFERENT INPUT/OUTPUT;
% OUTPUT EACH STAGE AS ABOVE TO RELEVANT IMAGES
% Part 2: noisy_edge.png, noisy_acc.png, ...
% Part 3: real_edge.png, real_acc.png, ...

% to get you started:

img = imread (fullfile ('input', 'noisy_square2x2.png'));
% REST OF PART 2

img = imread (fullfile ('input', 'pens_and_coins.png'));
% REST OF PART 3
