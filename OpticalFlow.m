    hVideoSrc = VideoReader('video1 (1).avi');
    
    % two frames
    im1 = im2single(readFrame(hVideoSrc));
    im2 = im2single(readFrame(hVideoSrc));

    im1gray = im2double(rgb2gray(im1));
    im2gray = im2double(rgb2gray(im2));

    % window size and threshold
    windowSize = 10;
    threshold = 1e-4;
    windowSize=round(windowSize/2);

    [u, v] = LucasKanade(im1gray, im2gray, windowSize, threshold);

    figure;
    imshow(im2)
    hold on;
    quiver(u, v, 0);
    title('Optical Flow Vectors');
    xlabel('x-axis');
    ylabel('y-axis');