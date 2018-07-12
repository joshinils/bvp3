clear all;
close all;
bild=im2double(imread('rose.tif'));

bild=imresize(bild, 1/16);

imshow(bild);
title('urbild'); figure;

[H, B]=size(bild);
fourier=centerImage(fft2(bild)/numel(bild));

imshowCompl(fourier,'fourier');

wert=10;
wert=wert^2;
t=ones(H,B)*255;
for j=1:H
    for k=1:B
        fprintf('j:%.f k:%.f q:%.f \n', j, k, (j-H/2)^2+(k-B/2)^2);
        if (j-H/2)^2+(k-B/2)^2 <= wert
            fourier(j, k)=0;
            t(j,k)=0;
%            fprintf('%.f %.f\n',j,k);
        end
    end
end
imshow(t);
title('t');

figure;
imshowCompl(fourier, 'filtered');

Ifourier = ifft2(fourier);

imshowCompl(Ifourier,'inverse');

imshow(abs(Ifourier),[]);
title('|inverse|'); figure;

unterschied = bild - Ifourier;
imshowCompl(unterschied,'unterschied');

imshow(abs(unterschied),[]);
title('|unteschied|');