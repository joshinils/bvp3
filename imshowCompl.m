function [ p ] = imshowCompl( bild )
	p=subplot(1,2,1);
	imshow(real(bild),[]);
	title('re(bild)');

	subplot(1,2,2);
	imshow(imag(bild),[]);
	title('im(bild)'); 
	figure;
end

