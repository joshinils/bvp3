function [ p ] = imshowCompl( bild, titel )
	if nargin < 2
		titel='.';
	end
	p=figure;
	subplot(1,2,1);
	imshow(real(bild),[]);
	title(['re(',titel,')']);

	subplot(1,2,2);
	imshow(imag(bild),[]);
	title(['im(',titel,')']); 
end

