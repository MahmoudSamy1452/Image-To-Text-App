%Character recognition
%Marwan Ashraf Moustafa Abdelaziz ElGamal 
%1200494
%Marwan.Gamal03@eng-st.cu.edu.eg 

function percent_similarity = compare_img(img1,img2)

    [R C] = size(img1);
    percent_similarity = sum(sum(img1 == img2))/(R*C)*100;
    
end