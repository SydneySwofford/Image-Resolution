%Sydney Swofford
%Inporting the Image and assuring size
input=imread('rose.jpg','jpg');
figure(1),imshow(input,[]);
[Irow,Icol]= size(input);

%New DownSampling Image Specs
xNew1=512;
yNew1=512;

xNew2=256;
yNew2=256;

xNew3=128;
yNew3=128;

xNew4=64;
yNew4=64;

xNew5=32;
yNew5=32;

%compute the new scale for each image
xScale1=Icol./xNew1;
xScale2=Icol./xNew2;
xScale3=Icol./xNew3;
xScale4=Icol./xNew4;
xScale5=Icol./xNew5;

yScale1=Irow./xNew1;
yScale2=Irow./xNew2;
yScale3=Irow./xNew3;
yScale4=Irow./xNew4;
yScale5=Irow./xNew5;

%Buffer for each new image
New512=zeros(xNew1,yNew1);
New256=zeros(xNew2,yNew2);
New128=zeros(xNew3,yNew3);
New64=zeros(xNew4,yNew4);
New32=zeros(xNew5,yNew5);

% Create New Output for each image
for I =1:xNew1
    for J = 1:yNew1
        New512(I,J)=input(I.*xScale1, J.*yScale1);
    end
end

for I =1:xNew2
    for J = 1:yNew2
        New256(I,J)=input(I.*xScale2, J.*yScale2);
    end
end

for I =1:xNew3
    for J = 1:yNew3
        New128(I,J)=input(I.*xScale3, J.*yScale3);
    end
end

for I =1:xNew4
    for J = 1:yNew4
        New64(I,J)=input(I.*xScale4, J.*yScale4);
    end
end

for I =1:xNew5
    for J = 1:yNew5
        New32(I,J)=input(I.*xScale5, J.*yScale5);
    end
end

%check the image size 
[checkx1,checky1]=size(New512);
[checkx2,checky2]=size(New256);
[checkx3,checky3]=size(New128);
[checkx4,checky4]=size(New64);
[checkx5,checky5]=size(New32);

%Display each image
figure(2),imshow(New512,[]);
figure(3),imshow(New256,[]);
figure(4),imshow(New128,[]);
figure(5),imshow(New64,[]);
figure(6),imshow(New32,[]);

%Save each new image 
imwrite(New512, 'New512.jpg');
imwrite(New256, 'New256.jpg');
imwrite(New128, 'New128.jpg');
imwrite(New64, 'New64.jpg');
imwrite(New32, 'New32.jpg');



