
ilosc_bitow=10;

% generator ciągu
wygenerowane_bity=rand(1,ilosc_bitow);
for i=0 : 1 : ilosc_bitow
  wygenerowane_bity=round(wygenerowane_bity);
end

% koder
r=repmat(wygenerowane_bity,3,1); %potrajanie bitów
r=r(:)'; %odczytuje elementy macierzy i zapisuje ją do wektora (' = transpose)

wyn = kanal(r, 0.2);

disp(wyn);