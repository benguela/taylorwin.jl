function taylorwin(N::Int, nbar::Int, sll::Int)
  B = 10 ^ (abs(sll) / 20);
  A = log(B + sqrt(B * B - 1)) / pi;
  σ2 = nbar * nbar / (A * A + (nbar - 0.5) * (nbar - 0.5));

  F = zeros(nbar-1)
  for m in 1:nbar-1
    num = zeros(nbar-1)
    for i in 1:nbar -1
      num[i] = 1 - (m * m / σ2) / (A * A + (i - 0.5) * (i - 0.5))
    end
    fnumerator = 0.5 * ((-1) ^ (m+1)) * prod(num)
    den = zeros(nbar -1)
    for j in 1:nbar -1
      if (j != m)
        den[j] = 1 - (m * m / (j * j))
      end
    end
    fdenominator = prod(den[1:end .!= m])

    F[m] = fnumerator / fdenominator
  end

  coefficients = zeros(N)
  for n in 1:N
    Fmcos = zeros(nbar -1)
    for (m,Fm) in enumerate(F)
      Fmcos[m] = Fm * cos(2 * pi * m / N * ((n - 1) - N / 2 + .5))
    end
    coefficients[n] = 1 + 2 * sum(Fmcos)
  end
  return coefficients
  
end
