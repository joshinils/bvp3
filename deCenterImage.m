function [ bild ] = deCenterImage( bild )
	[H, B]=size(bild);
	bild = bild(mod(ceil(H/2):ceil(H*3/2-1),H)+1, mod(ceil(B/2):ceil(B*3/2-1),B)+1);
end

