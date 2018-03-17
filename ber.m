%BER
function wynik = ber(bity_nadajnika, bity_odbiornika) 
%bity_nadajnika - wektor bitów po stronie nadawczej
%bity_odbiornika - wektor bitów po stronie odbiorczej
  wektor_bledow = xor(bity_nadajnika, bity_odbiornika); %Stwórz wektor z informacją o przekłamaniach
  wynik = nnz(wektor_bledow(1,:)==1)/length(bity_nadajnika); %Oblicz: ilość_przekłamań / długość_ciągu_bitów
end