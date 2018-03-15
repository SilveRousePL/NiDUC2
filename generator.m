%GENERATOR CIĄGU
function wynik = generator(ilosc_bitow)
  wynik=rand(1,ilosc_bitow); %losowanie liczb w zakresie 0-1
  wynik=round(wynik); %zaokrąglanie do całkowitych (0 i 1)
end