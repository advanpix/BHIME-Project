% ----------------------------------------------------------------------- %
% AUTHOR .... Steven E. Thornton (Copyright (c) 2017)                     %
% EMAIL ..... sthornt7@uwo.ca                                             %
% UPDATED ... Jul. 31/2016                                                %
%                                                                         %
% This function will generate a random circulant matrix where the entries %
% are sampled from a given list.                                          %
%                                                                         %
% INPUT                                                                   %
%   population ... Vector of values to sample entries from                %
%   n ............ Size of matrix                                         %
%                                                                         %
% OUTPUT                                                                  %
%   An nxn circulant matrix with entries randomly sampled from the        %
%   population vector.                                                    %
%                                                                         %
% REFERENCES                                                              %
%   mathworks.com/matlabcentral/fileexchange/22858-circulant-matrix       %
%   wikipedia.org/wiki/Circulant_matrix                                   %
%   mathworld.wolfram.com/CirculantMatrix.html                            %
%                                                                         %
% LICENSE                                                                 %
%   This program is free software: you can redistribute it and/or modify  %
%   it under the terms of the GNU General Public License as published by  %
%   the Free Software Foundation, either version 3 of the License, or     %
%   any later version.                                                    %
%                                                                         %
%   This program is distributed in the hope that it will be useful,       %
%   but WITHOUT ANY WARRANTY; without even the implied warranty of        %
%   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         %
%   GNU General Public License for more details.                          %
%                                                                         %
%   You should have received a copy of the GNU General Public License     %
%   along with this program.  If not, see http://www.gnu.org/licenses/.   %
% ----------------------------------------------------------------------- %
function A = randomCirculantMatrix(population, n)
    
    vec = randsample(population, n, true);
    
    n1 = n-1;
    
    A = vec(mod(bsxfun(@plus,(0:n1)',0:n1),n)+1);
    A = flipud(A);

end