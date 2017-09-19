class Arr1 < Array
  def ucln a, b
    while (a != b) do
      if (a > b)
         a -= b
      else
         b -= a
      end
    end
    return a
  end

  def bcnn a, b
   bcnn = a * b;
   while (a != b) do
      if (a > b)
         a -= b
      else
         b -= a
      end
   end
   return bcnn / a
  end

end

arr = Arr1.new 3
arr[0] = 4
arr[1] = 6
arr[2] = 8

uc = arr[0]
bc = arr[0]
for i in 1 .. 2
  uc = arr.ucln uc, arr[i]
  bc = arr.bcnn bc, arr[i]
end


puts "UCLN: #{uc}"
puts "BCNN: #{bc}"
