%Character recognition
%Mahmoud Samy Rashad AbdelWahed
%1200493
%Mahmoud.abdelwahed02@eng-st.cu.edu.eg 

function [char r_start c] = extract_char(r,c,img)

    [row col] = size(img);
    
    %find line start
    while r <= row
        
        if any(img(r,c:col) == 0)
            r_start = r;
            break
        elseif r == row
            %end of image
            r_start = 0;  
        end

        r = r + 1;
        
    end
    
    %find line end
    while r < row
        
        if all(img(r,c:col) == 255)
            r_end = r - 1;
            break
        end
        
        r = r + 1;
        
    end
    
    %scanning line for start of next character
    while c <= col 
        
        if r_start == 0
            break
        end
        
        if any(img(r_start:r_end,c) == 0) 
            c_start = c;
            break
        end
        
        c = c + 1;
        
    end
    
    %finding end of character
    while c < col
        
        if r_start == 0
            char = 0;
            break
        end
        
        if all(img(r_start:r_end,c) == 255)
            c_end = c - 1;
            char = img(r_start:r_end,c_start:c_end);
            char = cropimg(char);
            break
        end
        
        c = c + 1;
        
    end 
end