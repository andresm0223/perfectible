function  z = wrf_get_zfrometa(z0, pt, eta)
% z = wrf_get_zfrometa(z0, pt, eta)
% Funci�n para obtener altura, respecto de niveles eta.
% INPUTS:
% 
% z0: altura de suelo, respecto de nivel del mar [km].
% pt: presi�n en tope de atm�sfera.
% eta: niveles eta.
%
% OUTPUTS:
%
% z: altura de los niveles eta, respecto del nivel del mar, en [km].

H = 8.420;
ps = 1000*exp(-z0/H);
p = (eta*(ps - pt)) + pt;
z = -H*log(p/p0);