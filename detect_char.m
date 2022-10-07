%Character recognition
%Mostafa Reda Deyab 
%1200496
%Mostafa.naser03@eng-st.cu.edu.eg 

function best_match = detect_char(img)
    
    database = ['0(n).jpg';'1(n).jpg';'2(n).jpg';'3(n).jpg';'4(n).jpg';'5(n).jpg';'6(n).jpg';'7(n).jpg';'8(n).jpg';'9(n).jpg';'A(c).jpg';'B(c).jpg';'C(c).jpg';'D(c).jpg';'E(c).jpg';'F(c).jpg';'G(c).jpg';'H(c).jpg';'I(c).jpg';'J(c).jpg';'K(c).jpg';'L(c).jpg';'M(c).jpg';'N(c).jpg';'O(c).jpg';'P(c).jpg';'Q(c).jpg';'R(c).jpg';'S(c).jpg';'T(c).jpg';'U(c).jpg';'V(c).jpg';'W(c).jpg';'X(c).jpg';'Y(c).jpg';'Z(c).jpg'];    
    
    %checking character against database
    for i=1:length(database)
        database_element = cropimg(input_img(database(i,:)));
        database_element = resize_img(img,database_element);
        similarity(i) = compare_img(img,database_element);
    end
    
    [max_v,max_i] = max(similarity);
    best_match = database(max_i,:);
    
end
