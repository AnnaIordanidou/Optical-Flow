The aim of this work is to calculate the optical flow using the Luca-Kanade algorithm for two consecutive frames.
I created 2 files, one containing the optical flow calculation function called LucasKanade and a file that calls the function and calculates the optical flow, called OpticalFLow.



**LucasKanade function**
```
• The function takes two images as arguments, window size and threshold, and returns vectors u and v.
• The output of the convolutional layer is the same size as its output entrance, achieved by adding padding to the input.
• Convolution is used to calculate Ix, Iy, and It, using image 1 for the first two and the difference of the two images for It.
• System components are calculated for each pixel to estimate optical flow vectors, using gradients of the first frame, the difference between the two frames, and their products.
• The filtered products are used to calculate the elements of the matrix A and the vector b.
• The process iterates over all pixels in the image, except for a border equal to the window size.
• For each pixel (i,j), a 2x2 matrix A_window and a vector b_window are calculated by averaging over a local window centered at (i,j).
• The eigenvalues of A_window are calculated to check if the array is invertible. If the smallest eigenvalue is less than the limit, the optical flow for that pixel is set to zero.
• The optical flow for pixel (i,j) is calculated as nu = -inv(A_window) * b_window.
```


**OpticalFlow**
```
• The function calculates the vectors u and v from two images, using the window size and threshold as arguments.
• The convolutional layer's output size is the same as its input entrance, allowing convolutional layers to retain spatial information about the input image.
• The function calculates the system components for each pixel to estimate the optical flow vectors, using the gradients of the first frame, the difference between the two frames, and their products.
• The filtered products are used to calculate the elements of the matrix A and the vector b.
• The process iterates over all pixels in the image, except for a border of width equal to the window size.
• For each pixel (i,j), a 2x2 matrix A_window and a vector b_window are calculated by averaging over a local window centered at (i,j).
• The eigenvalues of A_window are calculated to check if the array is invertible. If the smallest eigenvalue is less than the limit, the optical flow for that pixel is set to zero.
• The optical flow (u,v) for pixel (i,j) is calculated as nu = -inv(A_window) * b_window, where inv(A_window) is the inverse of A_window and nu is a 2x1 vector containing the horizontal and vertical elements of optical flow.
• The optical flow components u(i,j) and v(i,j) are updated with the estimated values.
• The function is called with its name and inputs, the variables defined in the OpticalFLow file, and the vectors are drawn.
