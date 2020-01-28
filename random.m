clc;
clear all;
Im=imread('D:\Project-Under water image quality enhancement\hazed6.jpg');
figure(1);
subplot(2,2,1);
imshow(Im);
title('original image');
%[iLL,iLH,iHL,iHH]=dwt2(Im,'db4');
R=Im(:,:,1);
G=Im(:,:,2);
B=Im(:,:,3);
Rhist=adapthisteq(R);
Ghist=adapthisteq(G);
Bhist=adapthisteq(B);
RGB=cat(3,Rhist,Ghist,Bhist);
subplot(2,2,2);
imshow(RGB);
title('RGB image');
R1=RGB(:,:,1);
G1=RGB(:,:,2);
B1=RGB(:,:,3);

I=rgb2ycbcr(Im);
Y=I(:,:,1);
Cb=I(:,:,2);
Cr=I(:,:,3);
Y=adapthisteq(Y);
YCBCR=cat(3,Y,Cb,Cr);
temp=ycbcr2rgb(YCBCR);
%sX=size(temp);
%temp=idwt2(iLL,iLH,iHL,iHH,'db4',sX);
R2=temp(:,:,1);
G2=temp(:,:,2);
B2=temp(:,:,3);
%subplot(2,2,4);
%imshow(temp);
%title('Final image');


R3=sqrt(double(R1).^2+double(R2).^2);
G3=sqrt(double(G1).^2+double(G2).^2);
B3=sqrt(double(B1).^2+double(B2).^2);
final=cat(3,R3,G3,B3);
subplot(2,2,4);
imshow(temp);
title('Final image');

peaksnr1=psnr(RGB,Im);
disp(peaksnr1);
final=uint8(final);
peaksnr=psnr(final,Im);
disp(peaksnr);