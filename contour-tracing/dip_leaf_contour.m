I = imread('/Users/mert/Desktop/dip_final_th_question_2/15.jpg');

figure, imshow(I);

Ig = rgb2gray(I);

figure, imshow(Ig);

Ib = imbinarize(Ig);
Ib = imcomplement(Ib);

figure, imshow(Ib);

N = size(Ib);

Ic = zeros(N);

i = 1;
j = 1;
flag = 0;
while i < N(1)
    while j < N(2)
        k = i-1;
        l = j-1;
        flag = 0;
        
        while k < i+1
            while l < j+1
                if ((k > 1 && l > 1) && (k <= N(1) && l <= N(2)))
                    if(Ib(k,l))
                        i = k;
                        j = l;
                        Ic(k, l) = 1;
                        flag = 1;
                        break;
                    end
                end
                if(flag == 1)
                    break;
                end
                l = l+1;
            end
            if(flag == 1)
              break;
            end
            k = k+1;
        end
        
        
        j = j+1;
    end
    i = i+1;
end

figure, imshow(Ig);

% for i = 1:N(1)
%     for j = 1:N(2)
%         if(Ic(i,j) == 1)
%             Ig(i, j) = 0;
%         end
%     end
% end

figure, imshow(Ic);