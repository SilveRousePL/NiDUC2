%GENERATOR CIĄGU
function wynik = generator(ilosc_bitow) %ilosc_bitow - ilosc_bitow do wygenerowania
  wynik=rand(1,ilosc_bitow); %Losowanie liczb w zakresie 0.00-1.00
  wynik=round(wynik); %Zaokrąglanie do całkowitych (0 i 1)
end