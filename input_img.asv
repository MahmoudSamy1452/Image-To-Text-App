%Character recognition
%Omar Mohamed Said Mohamed Hassan 
%1200859
%Omar.Hassan022@eng-st.cu.edu.eg  

function img = input_img(filename) 

    img = imread(filename);
    
    %create 2D array of one channel
    img = rgb2gray(img);
    
    %rounding values to compare 2D arrays
    img(img<125) = 0;
    img(img>=125)= 255;
    
end

