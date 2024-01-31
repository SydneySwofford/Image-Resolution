%Sydney Swofford
%Importing the Images and storing their sizes 
input512 =imread('New512.jpg', 'jpg');
input256 =imread('New256.jpg', 'jpg');
input128 =imread('New128.jpg', 'jpg');
input64 =imread('New64.jpg', 'jpg');
input32 =imread('New32.jpg', 'jpg');

[x512,y512]=size(input512);
[x256,y256]=size(input256);
[x128,y128]=size(input128);
[x64,y64]=size(input64);
[x32,y32]=size(input32);

%Upscaled Image new Sizes (all the same)
xNew=1024;
yNew=1024;

%Comput new scaling factors 
xScale1=xNew./(x512-1);
yScale1=yNew./(y512-1);
xScale2=xNew./(x256-1);
yScale2=yNew./(y256-1);
xScale3=xNew./(x128-1);
yScale3=yNew./(y128-1);
xScale4=xNew./(x64-1);
yScale4=yNew./(y64-1);
xScale5=xNew./(x32-1);
yScale5=yNew./(y32-1);

%New output image Buffer 

new512to1024=zeros(xNew,yNew);
new256to1024=zeros(xNew,yNew);
new128to1024=zeros(xNew,yNew);
new64to1024=zeros(xNew,yNew);
new32to1024=zeros(xNew,yNew);

%Compute Image output 
for I=0:xNew-1
    for J=0:yNew-1
        new512to1024(I+1,J+1)=input512(1+round(I./xScale1),1+round(J./yScale1));
    end
end
for I=0:xNew-1
    for J=0:yNew-1
        new256to1024(I+1,J+1)=input256(1+round(I./xScale2),1+round(J./yScale2));
    end
end
for I=0:xNew-1
    for J=0:yNew-1
        new128to1024(I+1,J+1)=input128(1+round(I./xScale3),1+round(J./yScale3));
    end
end
for I=0:xNew-1
    for J=0:yNew-1
        new64to1024(I+1,J+1)=input64(1+round(I./xScale4),1+round(J./yScale4));
    end
end
for I=0:xNew-1
    for J=0:yNew-1
        new32to1024(I+1,J+1)=input32(1+round(I./xScale5),1+round(J./yScale5));
    end
end

%check image size
[xcheck1,ycheck1]=size(new512to1024);
[xcheck2,ycheck2]=size(new256to1024);
[xcheck3,ycheck3]=size(new128to1024);
[xcheck4,ycheck4]=size(new64to1024);
[xcheck5,ycheck5]=size(new32to1024);

%Display Each new image 
figure(1),imshow(new512to1024,[]);
figure(2),imshow(new256to1024,[]);
figure(3),imshow(new128to1024,[]);
figure(4),imshow(new64to1024,[]);
figure(5),imshow(new32to1024,[]);

%Save each new image
imwrite(new512to1024, 'new512to1024.jpg');
imwrite(new256to1024, 'new256to1024.jpg');
imwrite(new128to1024, 'new128to1024.jpg');
imwrite(new64to1024, 'new64to1024.jpg');
imwrite(new32to1024, 'new32to1024.jpg');

