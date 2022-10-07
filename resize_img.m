%Character recognition
%Marwan Ashraf Moustafa Abdelaziz ElGamal 
%1200494
%Marwan.Gamal03@eng-st.cu.edu.eg  

function new = resize_img(img1,img2)
    
    %scale img2 to match size of img1
    [R C] = size(img1);
    new = imresize(img2,[R C]);
    
end