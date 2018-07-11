function [ bild ] = centerImage( bild )
	[H, B]=size(bild);
	bild = bild(mod(floor(H/2):floor(H*3/2),H)+1, mod(floor(B/2):floor(B*3/2),B)+1);
end

