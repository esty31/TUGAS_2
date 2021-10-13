figure(1)
a = imread('esty.jpg');
imshow(a)
title('Gambar Asli')

%Rumus Trasformasi Citra RGB ke Greyscale (citra keabuan)
I_gey = (a(:,:,1)+a(:,:,2)+a(:,:,3))/3;
figure(2)
imshow(I_gey)
title('Rumus Rata-rata')

%Rumus Komposisi Trasformasi Citra RGB ke Greyscale (citra keabuan)
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
figure(3)
imshow(I_greyKom) 
title('Rumus Komposisi')

%Pengaturan Brightness Citra Keabuan
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
tBrig = 75;
I_brig = I_greyKom + tBrig;
figure(4)
imshow(I_brig)

%Pengaturan Kontrass Citra Keabuan
I_greyKom = 0.4*a(:,:,1)+0.32*a(:,:,2)+0.28*a(:,:,3);
tCon = 100;
I_Con = I_greyKom + tCon;
figure(5)
imshow(I_Con)

%Pengaturan Citra Keabuan ke Biner
a = imread('esty.jpg');
I_bw = im2bw(a,0.5);
figure(6)
imshow(I_bw)