%DEKODER
function wynik = dekoder(A)
  w = vec2mat(A,3);
  wynik = zeros(0);
  for i=1 : 1 : length(A)/3
    ilosc_zer = 0;
    ilosc_jedynek = 0;
    for j=1 : 1 : 3
      if w(i,j) == 0
        ilosc_zer++;
      else 
        ilosc_jedynek++;
      end
    end
    
    if ilosc_jedynek > ilosc_zer
      wynik = [wynik, 1];
    else
      wynik = [wynik, 0];
    end
  end
end