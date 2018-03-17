% Niezawodność i Diagnostyka Układów Cyfrowych - PROJEKT
% Wtorek TP 15:15
% Temat: FEC - Forward Error Correction
% 
% Autorzy:
% Dariusz Tomaszewski, 235565
% Justyna Skalska, 225942
% Alicja Wróbel, 238894

%Ilość pomiarów do wykonania (odwrotność kroku prawdopodobieństwa przekłamania):
ilosc_pomiarow = 100;
%Ilość bitów do wygenerowania przed zakodowaniem:
ilosc_bitow = 1000;

wektor_ber = zeros(0); %Inicjalizacja wektora BER
for i=linspace(0,1,ilosc_pomiarow)
  
  wygenerowane_bity = generator(ilosc_bitow); %Generowanie ciągu bitów
  %disp(wygenerowane_bity);
  
  zakodowane_bity = koder(wygenerowane_bity); %Kodowanie ciągu bitów techniką FEC
  %disp(zakodowane_bity);
  
  odebrane_bity = kanal(zakodowane_bity, i); %Wysłanie ciągu bitów do odbiornika poprzez kanał
  %disp(odebrane_bity);
  
  zdekodowane_bity = dekoder(odebrane_bity); %Dekodowanie ciągu bitów zakodowanego techniką FEC
  %disp(zdekodowane_bity);
  
  wektor_ber = [wektor_ber, ber(wygenerowane_bity, zdekodowane_bity)]; %Zapisanie wyniku BER
end

plot(linspace(0,1,ilosc_pomiarow), wektor_ber); %Generowanie wykresu
title (sprintf("Wykres dla %d pomiarów",ilosc_pomiarow)); 
xlabel("Prawdopodobieństwo błędu");
ylabel("BER");