%Character recognition
%Abdullah Ayman Mohamed ElBukry 
%1200488
%abdullah.elbukry02@eng-st.cu.edu.eg

function img = cropimg(img)

    [R C] = size(img);
    
    %empty white columns 
    i = 1;
    while i <= C 
        if all(img(:,i)==255)
            img(:,i) = [];
            C = C - 1;
        else
            i = i + 1;
        end
    end
    
    %empty white rows
    i = 1;
    while i <= R
        if all(img(i,:)==255)
            img(i,:) = [];
            R = R - 1;
        else
            i = i + 1;
        end
    end
    
end
        
    