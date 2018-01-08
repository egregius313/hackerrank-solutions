def prime? n
  if n < 2
    false
  elsif n == 2
    true
  elsif n.even?
    false
  else
    i = 3
    while i <= Math.sqrt n
      if n % i == 0
        return false
      end
      i += 2
    end
    return true
  end
end
