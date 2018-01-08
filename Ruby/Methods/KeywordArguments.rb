def convert_temp(
      temp,
      input_scale: 'celsius',
      output_scale: 'fahrenheit')
  case [input_scale, output_scale]
  when ['celsius', 'kelvin']
    temp + 273.15
  when ['kelvin', 'celsius']
    temp - 273.15
  when ['celsius', 'fahrenheit']
    (temp * 9/5) + 32
  when ['fahrenheit', 'celsius']
    (temp - 32) * 5/9
  when ['kelvin', 'fahrenheit']
    ((temp - 273.15) * 9/5) + 32
  when ['fahrenheit', 'kelvin']
    ((temp - 32) * 5/9) + 273.15
  end
end
