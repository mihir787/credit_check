card_number = "342801633855673"
array = []



card_number = card_number.reverse

max_index = card_number.length - 1

(0..max_index).each do |n|
  if n % 2 != 0
    digit = (card_number[n].to_i) * 2
    if digit > 9
      digit = digit - 9
    end
    array.push("#{digit}")
  else
    array.push("#{card_number[n]}")
  end
end

sum = 0
array.each do |n|
  sum = sum + n.to_i
end

if sum % 10 == 0
  puts "The number is valid!"
else
  puts "The number is invalid!"
end








=begin
psuedo:
1. take credit card number and seperate the digits OR use index values
2. take every other index value and multiply by two starting with the first
3. see if the new multiplied values are > 9;
  if so then sum the digits by subtracting 9 from the number
4. add up the resulting number and mod by 10, if == 0 then valid else invalid



# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number is valid!"
## If it is invalid, print "The number is invalid!"
=end
