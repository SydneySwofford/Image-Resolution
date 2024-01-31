%Sydney Swofford
%read input photo 8 bit gray level 256 
input =imread('Lena.png', 'png');
figure(1),imshow(input,[]);

%change the bits per pixel and output
image7bit=input/2;
figure(2),imshow(image7bit,[]);

image6bit=input/4;
figure(3),imshow(image6bit,[]);

image5bit=input/8;
figure(4),imshow(image5bit,[]);

image4bit=input/16;
figure(5),imshow(image4bit,[]);

image3bit=input/32;
figure(6),imshow(image3bit,[]);

image2bit=input/64;
figure(7),imshow(image2bit,[]);

image1bit=input/128;
figure(8),imshow(image1bit,[]);

%Save each image
imwrite(image7bit, '7bitImage.jpg');
imwrite(image6bit, '6bitImage.jpg');
imwrite(image5bit, '5bitImage.jpg');
imwrite(image4bit, '4bitImage.jpg');
imwrite(image3bit, '3bitImage.jpg');
imwrite(image2bit, '2bitImage.jpg');
imwrite(image1bit, '1bitImage.jpg');
