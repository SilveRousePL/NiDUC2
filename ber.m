%BER
function wynik = ber(wygenerowane_bity, zdekodowane_bity)
  wektor_bledow = xor(wygenerowane_bity, zdekodowane_bity);
  wynik = nnz(wektor_bledow(1,:)==1)/length(wygenerowane_bity);
end