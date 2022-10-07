%Character recognition
%Mahmoud Samy Rashad AbdelWahed
%1200493
%Mahmoud.abdelwahed02@eng-st.cu.edu.eg

function main
      
    i = fopen('input.txt','r');
    o = fopen('output.txt','w');
    filename = fscanf(i,'%s');
    img = input_img(filename);
    
    %initializing row start and column start
    r = 1;
    c = 1;
    
    while 1
        
        [char r c] = extract_char(r,c,img);
        disp(char)
        if r == 0
            %end of image
            break
        end

        letter = detect_char(char);
        fprintf(o,'%s',letter(1));
        
    end
    
    fprintf('image processed successfully.\n');

    fclose(i);
    fclose(o);
end
    


