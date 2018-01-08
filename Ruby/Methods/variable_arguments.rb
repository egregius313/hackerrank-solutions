def full_name(first, *rest)
  rest.reduce(first) { |fn, n| fn + ' ' + n }
end
