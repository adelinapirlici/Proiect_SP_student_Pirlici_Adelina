v=randn(1,4) %generare vector
for i=1:4  %parcurgere vector
    if v(i)<0% conditie de afisare elemente negative
        ans = v(i)
    end
end
ans %afisare
