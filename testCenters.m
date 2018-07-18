function [] = testCenters(s)
T=rand(s)

C=centerImage(T)

D=deCenterImage(C)

U=T-D

end % function

