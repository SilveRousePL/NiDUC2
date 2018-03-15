%KODER
function wynik = koder(A)
  wynik=repmat(A,3,1); %Potrajanie bitów
  wynik=wynik(:)'; %Odczytuje elementy macierzy i zapisuje ją do wektora (' = transpose)
end