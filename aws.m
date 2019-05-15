[filename ,pathname] = uigetfile({'*.jpg'},'File Selector');
fullImageFileName = fullfile(pathname,filename);
imagen=imread(fullImageFileName);

% % figure(1)
% % imshow(imagen,[]);
% % title('INPUT IMAGE WITH NOISE')
% % 
% % if size(imagen,3)==3 
% %   imagen=rgb2gray(imagen);
% % end
imagen = ~im2bw(imagen,0.9);
bi_imgA = bwareaopen(imagen,8);
BW2 = bwmorph(bi_imgA,'remove');
figure(1)
imshow(BW2);


% % % % %% Convert to binary image
% % % % % % % % threshold = graythresh(imagen);
% % % % % % % % imagen =~im2bw(imagen,threshold);
% % % % % % % % 
% % % % %% Label connected components
% % % % [L, Ne,]=bwlabel(imagen);
% % % % %% Measure properties of image regions
% % % % propied=regionprops(L,'BoundingBox');
% % % % hold on
% % % % %% Plot Bounding Box
% % % % for n=1:size(propied,1)
% % % %   rectangle('Position',propied(n).BoundingBox,'EdgeColor','g','LineWidth',1)
% % % % end
% % % % hold off
% % % % pause (1)
% % % % %% Objects extraction
% % % % figure
% % % % for n=1:Ne
% % % %   [r,c] = find(L==n);
% % % %   n1=imagen(min(r):max(r),min(c):max(c));
% % % %   imshow(n1);
% % % %   imwrite(n1,strcat('E:\Code Work\MATLAB\faheem\Mufasir\Img\Words\',num2str(n),'.jpg'));
% % % %   
% % % % end