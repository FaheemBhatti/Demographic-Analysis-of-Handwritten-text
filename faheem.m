clear all
close all
clc

% % % % % % % % % Read Image and Gray scale %%%%%%%%%%%%%%%%%%
[filename ,pathname] = uigetfile('*.jpg;*.tif;*.png;*.gif','All Image Files');
fullImageFileName = fullfile(pathname,filename);
image=imread(fullImageFileName);
if size(image,3)==3 
  image=rgb2gray(image);
end
% % % % % % % % % J = imrotate( image,-1,'bilinear','crop');
% % % % % % % % % figure(1);
% % % % % % % % % imshow(J);
% % % % % % % % [row , col] = size(image);
% % % % % % % % limit_col = col-15;
% % % % % % % % graph_val=zeros(row,1);
% % % % % % % % count=0;
% % % % % % % % 
% % % % % % % % % % % % % % % % % Exract Cropped %%%%%%%%%%%%%%%%%%
% % % % % % % % for i=1:row
% % % % % % % %     for  o=1:col
% % % % % % % %         if(image(i,o)>240)
% % % % % % % %             count=count+1;
% % % % % % % %         end
% % % % % % % %     end
% % % % % % % %     graph_val(i)=count;
% % % % % % % %     count=0;
% % % % % % % % end
% % % % % % % % up_thres1=1950;
% % % % % % % % up_thres2=2250;
% % % % % % % % for i=800:row
% % % % % % % %         if((graph_val(i)> up_thres1 && graph_val(i)< up_thres2)&&(graph_val(i-1)> up_thres1 && graph_val(i-1)< up_thres2)&&(graph_val(i-2)> up_thres1 && graph_val(i-2)< up_thres2)&&(graph_val(i-3)> up_thres1 && graph_val(i-3)< up_thres2)&&(graph_val(i-4)> up_thres1 && graph_val(i-4)< up_thres2)&&(graph_val(i-5)> up_thres1 && graph_val(i-5)< up_thres2)&&(graph_val(i-6)> up_thres1 && graph_val(i-6)< up_thres2)&&(graph_val(i-7)> up_thres1 && graph_val(i-7)< up_thres2)&&(graph_val(i-8)> up_thres1 && graph_val(i-8)< up_thres2)&&(graph_val(i-9)> up_thres1 && graph_val(i-9)< up_thres2)&&(graph_val(i-10)> up_thres1 && graph_val(i-10)< up_thres2)&&(graph_val(i-11)> up_thres1 && graph_val(i-11)< up_thres2)&&(graph_val(i-12)> up_thres1 && graph_val(i-12)< up_thres2)&&(graph_val(i-13)> up_thres1 && graph_val(i-13)< up_thres2)&&(graph_val(i-14)> up_thres1 && graph_val(i-14)< up_thres2)&&(graph_val(i-15)> up_thres1 && graph_val(i-15)< up_thres2)&&(graph_val(i-16)> up_thres1 && graph_val(i-16)< up_thres2)&&(graph_val(i-17)> up_thres1 && graph_val(i-17)< up_thres2)&&(graph_val(i-18)> up_thres1 && graph_val(i-18)< up_thres2)&&(graph_val(i-19)> up_thres1 && graph_val(i-19)< up_thres2)&&(graph_val(i-20)> up_thres1 && graph_val(i-20)< up_thres2))            
% % % % % % % %            up_boder= i-100;
% % % % % % % %            break;
% % % % % % % %         end
% % % % % % % % end
% % % % % % % % count2=0;
% % % % % % % % for i=up_boder:row
% % % % % % % %         if((graph_val(i)> limit_col)&&(graph_val(i-1)> limit_col)&&(graph_val(i-2)> limit_col)&&(graph_val(i-3)> limit_col)&&(graph_val(i-4)> limit_col)&&(graph_val(i-5)> limit_col)&&(graph_val(i-6)> limit_col)&&(graph_val(i-7)> limit_col)&&(graph_val(i-8)> limit_col)&&(graph_val(i-9)> limit_col)&&(graph_val(i-10)> limit_col)&&(graph_val(i-11)> limit_col)&&(graph_val(i-12)> limit_col)&&(graph_val(i-13)> limit_col)&&(graph_val(i-14)> limit_col)&&(graph_val(i-15)> limit_col)&&(graph_val(i-16)> limit_col)&&(graph_val(i-17)> limit_col)&&(graph_val(i-18)> limit_col)&&(graph_val(i-19)> limit_col)&&(graph_val(i-20)> limit_col)&&(graph_val(i-21)> limit_col)&&(graph_val(i-22)> limit_col)&&(graph_val(i-23)> limit_col)&&(graph_val(i-24)> limit_col)&&(graph_val(i-25)> limit_col)&&(graph_val(i-26)> limit_col)&&(graph_val(i-27)> limit_col)&&(graph_val(i-28)> limit_col)&&(graph_val(i-29)> limit_col)&&(graph_val(i-30)> limit_col)&&(graph_val(i-31)> limit_col)&&(graph_val(i-32)> limit_col)&&(graph_val(i-33)> limit_col)&&(graph_val(i-34)> limit_col)&&(graph_val(i-35)> limit_col)&&(graph_val(i-36)> limit_col)&&(graph_val(i-37)> limit_col)&&(graph_val(i-38)> limit_col)&&(graph_val(i-39)> limit_col)&&(graph_val(i-40)> limit_col)&&(graph_val(i-41)> limit_col)&&(graph_val(i-42)> limit_col)&&(graph_val(i-43)> limit_col)&&(graph_val(i-44)> limit_col)&&(graph_val(i-45)> limit_col)&&(graph_val(i-46)> limit_col)&&(graph_val(i-47)> limit_col)&&(graph_val(i-48)> limit_col)&&(graph_val(i-49)> limit_col)&&(graph_val(i-50)> limit_col))            
% % % % % % % %            lw_boder= i;
% % % % % % % %            break;
% % % % % % % %         end
% % % % % % % % end
% % % % % % % % lw_val=lw_boder - up_boder;
% % % % % % % % % up_boder = min(graph_val);
% % % % % % % % croped = imcrop(image,[1 up_boder col lw_val]);
% % % % % % % % 
% % % % % % % % % % % % figure(1);
% % % % % % % % % % % % imshow(image);
% % % % % % % % % % % % figure(2);
% % % % % % % % % % % % barh(graph_val);
% % % % % % % % % % % %  figure(3);
% % % % % % % % % % % %  imshow(croped)
% % % % 
% % % % 
% % % % % % % % % % % % % Exreact lines %%%%%%%%%%%%%%%%%%
% % % % bi_img =im2bw(image,0.90);
% % % % [row , col] = size(image);
% % % % croped_graph_val=zeros(row,1);
% % % % count9=0;
% % % % 
% % % % for i=1:row
% % % %     for  o=1:col
% % % %         if(bi_img(i,o)== 0)
% % % %             count9=count9+1;
% % % %         end
% % % %     end
% % % %     croped_graph_val(i)=count9;
% % % %     count9=0;
% % % % end
% % % % 
% % % % trigger=zeros(row,1);
% % % % for i=1:row
% % % %         if(croped_graph_val(i)>50)           
% % % %            trigger(i)= 1;
% % % %         end
% % % % end
% % % % 
% % % % for i=1:row
% % % %         if(croped_graph_val(i)>50)           
% % % %            trigger(i)= 1;
% % % %         end
% % % % end
% % % % ln_up_count =1;
% % % % ln_dw_count =1;
% % % % line_up=zeros(50,1);
% % % % line_dw=zeros(50,1);
% % % % 
% % % % for i=2:row
% % % %         if(trigger(i)~= trigger(i-1) && trigger(i)== 1)
% % % %             line_up(ln_up_count) = i;
% % % %             ln_up_count = ln_up_count+1;
% % % %         elseif(trigger(i)~= trigger(i-1) && trigger(i)== 0)
% % % %             line_dw(ln_dw_count) = i;
% % % %             ln_dw_count = ln_dw_count+1;
% % % %         end
% % % % end
% % % % for i=1:50
% % % %         if(line_dw(i)- line_up(i) < 5 )
% % % %             line_up(i) = 0;
% % % %             line_dw(i) = 0;
% % % %         end
% % % % end
% % % % figure(1);
% % % % imshow(bi_img);
% % % % figure(2);
% % % % barh(croped_graph_val);
% % % % figure(3);
% % % % barh(trigger);
% % % % for i=1:ln_up_count-1
% % % %         figure(i+3);
% % % %         croped_lin{i} = imcrop(image,[1 line_up(i)-40 col (line_dw(i)-line_up(i))+80]);
% % % % % %         imwrite(croped_lin,'i.png')
% % % % % %         imwrite(croped_lin,'C:\Users\MUFASIR\Desktop\Matlab\i','jpg')
% % % % %             imwrite(croped_lin,mkdir('C:\Users\MUFASIR\Desktop\Matlab\i'),'jpg');
% % % %         imshow(croped_lin{i})
% % % %         imwrite(croped_lin{i},strcat('C:\Users\MUFASIR\Desktop\Matlab\Img\Lines\line',num2str(i),'.jpg'));
% % % % %         imwrite(croped_lin{i},'%d.png',i)
% % % % %         imsave;
% % % % end

% % % % % % % % % Extract Words %%%%%%%%%%%%%%%%%%

image
figure(1)
imshow(image,[]);

Iblur1 = imgaussfilt(image,8);
figure(2)
imshow(image);

bi_img =~im2bw(image,0.90);
[row , col] = size(image);
croped_graph_val_w =zeros(col,1);
count9_w=0;

[L, Ne,]=bwlabel(image);
%% Measure properties of image regions
propied=regionprops(L,'BoundingBox');
hold on
%% Plot Bounding Box
for n=1:size(propied,1)
  rectangle('Position',propied(n).BoundingBox,'EdgeColor','g','LineWidth',1)
end

% % for i=1:col
% %     for  o=1:row
% %         if(bi_img(o,i)== 0)
% %             count9_w=count9_w+1;
% %         end
% %     end
% %     croped_graph_val_w(i)=count9_w;
% %     count9_w=0;
% % end
% % croped_graph_val_w_0 =zeros(col,1);
% % 
% % for i=1:col
% %         if( croped_graph_val_w(i) > 5)
% %             croped_graph_val_w_0(i) = 1;
% %         else
% %             croped_graph_val_w_0(i) = 0;
% %         end
% % end

% figure(1);
% imshow(bi_img);
% figure(2);
% bar(croped_graph_val_w);
% figure(3);
% bar(L);


% trigger_w=zeros(col,1);
% for i=1:col
%         if(croped_graph_val_w(i)>50)           
%            trigger_w(i)= 1;
%         end
% end
% 
% for i=1:col
%         if(croped_graph_val_w(i)>50)           
%            trigger_w(i)= 1;
%         end
% end
% ln_lt_count =1;
% ln_rt_count =1;
% word_lt=zeros(50,1);
% word_rt=zeros(50,1);
% 
% for i=2:row
%         if(trigger_w(i)~= trigger_w(i-1) && trigger_w(i)== 1)
%             line_lt(ln_lt_count) = i;
%             ln_lt_count = ln_lt_count+1;
%         elseif(trigger_w(i)~= trigger_w(i-1) && trigger_w(i)== 0)
%             line_rt(ln_rt_count) = i;
%             ln_rt_count = ln_rt_count+1;
%         end
% end
% for i=1:50
%         if(line_rt(i)- line_lt(i) < 5 )
%             line_lt(i) = 0;
%             line_rt(i) = 0;
%         end
% end
% figure(1);
% imshow(bi_img);
% figure(2);
% barh(croped_graph_val_w);
% figure(3);
% barh(trigger_w);
% for i=1:ln_lt_count-1
%         figure(i+3);
%         croped_lin_w{i} = imcrop(image,[line_lt(i)-5  1 (line_rt(i)-line_lt(i))+10 row]);
% % %         imwrite(croped_lin,'i.png')
% % %         imwrite(croped_lin,'C:\Users\MUFASIR\Desktop\Matlab\i','jpg')
% %             imwrite(croped_lin,mkdir('C:\Users\MUFASIR\Desktop\Matlab\i'),'jpg');
%         imshow(croped_lin_w{i})
%         imwrite(croped_lin_w{i},strcat('C:\Users\MUFASIR\Desktop\Matlab\Img\Words\word',num2str(i),'.jpg'));
% %         imwrite(croped_lin{i},'%d.png',i)
% %         imsave;
% end




% croped_ln[] = imcrop(image,[1 up_boderln col lw_val]);
% figure(1);
% imshow(bi_img);
% figure(2);
% barh(croped_graph_val);
% figure(3);
% imshow(croped_ln);
% new_img=ones(row,col);
% for i=1:row
%     for  o=1:col
%         if(image(i,o)>30 && image(i,o)<230)
%             new_img(i,o)= 0;
%         end
%     end
% end
% imshow(image)
% image_gray=rgb2gray(imagen);
% binaryim =im2bw(imagen,0.90);
% % y = skewness(binaryim);

% binaryim =im2bw(imagen,0.5);
% [row , col] = size(binaryim);
% % bweuler(binaryim)
% mask = binaryim;
% bw = activecontour(imagen,mask);