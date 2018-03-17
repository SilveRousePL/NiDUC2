%DEKODER
function wynik = dekoder(A) %A - wektor bitów potrojonych
  w = vec2mat(A,3); %Stworzenie macierzy z kolejnych trójek z wektora A
  wynik = zeros(0); %Inicjalizacja wektora i wpisanie go jako wynikowego
  for i=1 : 1 : length(A)/3 %Dla każdej kolumny w macierzy "w" wykonaj:
    ilosc_zer = 0; %Wyzeruj stan
    ilosc_jedynek = 0; %Wyzeruj stan
    for j=1 : 1 : 3 %W wybranej kolumnie macierzy zliczaj:
      if w(i,j) == 0 %Jeśli element = 0
        ilosc_zer++; %Policz kolejne zero
      else %W przeciwnym razie:
        ilosc_jedynek++; %Policz kolejną jedynkę
      end
    end
    
    if ilosc_jedynek > ilosc_zer %Jeśli jedynek jest więcej:
      wynik = [wynik, 1]; %Do wektora wynikowego dopisz bit 1
    else %W przeciwnym razie:
      wynik = [wynik, 0]; %Do wektora wynikowego dopisz bit 0
    end
  end
end