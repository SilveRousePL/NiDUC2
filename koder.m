%KODER
function wynik = koder(A) %A - wektor bitów
  wynik=repmat(A,3,1); %Potrajanie bitów (forma macierzy)
  wynik=wynik(:)'; %Odczytuje kolejno elementy macierzy i zapisuje je do wektora (' = transpose)
end