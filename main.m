% Autorzy:
% Dariusz Tomaszewski, 235565
% Justyna Skalska, 225942
% Alicja Wróbel, 238894
%TODO: Komentarze dla kanału, dekodera, bera, maina
ilosc_pomiarow = 100;
wektor_ber = zeros(0);
for i=linspace(0,1,ilosc_pomiarow)
  
  wygenerowane_bity = generator(1000);
  %disp(wygenerowane_bity);
  
  zakodowane_bity = koder(wygenerowane_bity);
  %disp(zakodowane_bity);
  
  odebrane_bity = kanal(zakodowane_bity, i);
  %disp(odebrane_bity);
  
  zdekodowane_bity = dekoder(odebrane_bity);
  %disp(zdekodowane_bity);
  
  wektor_ber = [wektor_ber, ber(wygenerowane_bity, zdekodowane_bity)];
end
plot(linspace(0,1,ilosc_pomiarow), wektor_ber);
xlabel("Prawdopodobieństwo błędu");
ylabel("BER");