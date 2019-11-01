function [b,ma] = media_vector_matrice(z)
v=real(z);
a=v.^2;
for i=1:1:length(v) %calcul medie vector 
    ma=0;
    ma=real(v(i))+ma;
    ma=ma/5;
    
end
b = v * v.';
 %ma
 %a
 %b

 
end 