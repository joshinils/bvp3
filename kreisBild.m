function m = kreisBild( breite, radius, ausfuellung)

m = ones(breite, breite)./2 ;

if(nargin < 2)
	radius = breite / 2 ;
	ausfuellung = true ;
elseif(nargin < 3)
	ausfuellung = true ;
end


radius_q = radius * radius ;
breite_h = (breite + 1) / 2 ;

tic

for i = 1:breite

	rad_q_b = radius_q - (i - breite_h)^2 ;
	m(i, 1:breite) = ( (1:breite) - breite_h ) .^2  <= rad_q_b ;

% 	for j = 1:breite
% 		if ( (i - breite_h)^2 +  (j - breite_h) * (j - breite_h) ) < radius_q 
% 		    m(i,j) = ausfuellung ;
% 		end
% 	end

end

toc

end % function