%KANAŁ
function wynik = kanal(A,P)
  r = rand(1,length(A));
  for i=1:1:length(A)
    if r(i) < P
      A(i) = ~A(i);
    end
  end
  wynik = A;
end