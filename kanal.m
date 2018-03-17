%KANAŁ
function wynik = kanal(A,P) %A - wektor bitów, P - prawdop. przekłamania
  wynik = A; %Wpisz wektor A jako wynikowy (dalsze operacje wykonywane będą na wynikowym)
  r = rand(1,length(wynik)); %Utworzenie wektora losowych wartości o dł. = dł. wektora wynik
  for i=1:1:length(wynik) %Dla każdego z elem. wektorów wykonaj:
    if r(i) < P %Jeśli elem. wektora losowych wartości jest mniejszy od P:
      wynik(i) = ~wynik(i); %Zrób negację elementu w wektorze A
    end
  end
end