# Write your solution here!
require "rqrcode"
# qrcode = RQRCode::QRCode.new("SMSTO:5102135718:Hi Mantha! It's Jordan. I'm sending this text through a QR code that I coded in class. Hope you're having fun at sushi :)")
# png = qrcode.as_png({ :size => 500 })
# IO.binwrite("sometext.png", png.to_s)

puts "Hi! I'm your QR code generator. I can make you a unique QR code to do one of the following:\n\n"
  puts "1. Open a URL\n"
  puts "2. Join a wifi network\n"
  puts "3. Send a text message\n\n"
puts "Enter the number of the QR code type you want, or enter 4 to exit.\n"
puts "\n"
response = gets.chomp
if response == "1" || response == "2" || response == "3"
  if response == "1"
    pp "Open a URL"
    puts "\nPaste the URL that you'd like the code to open below:"
    puts "\n"
    target = gets.chomp
  elsif response == "2"
    pp "Join a wifi network"
    puts "\nWrite the name of the wifi network you'd like to join below:"
    puts "\n"
    target_network = gets.chomp
    puts "\nWrite the network's password below:"
    puts "\n"
    target_password = gets.chomp
    target = "WIFI:T:WPA;S:" + target_network + ";P:" + target_password + ";;"
  else response == "3"
    pp "Send a text message"
    puts "\nEnter the recipient's phone number (without spaces or dashes) below:"
    puts "\n"
    target_number = gets.chomp
    puts "\nWhat message would you like to the QR code to send?"
    puts "\n"
    target_message = gets.chomp
    target = "SMSTO:" + target_number.to_s + ":" + target_message
  end
  puts "\nWhat do you want to name the PNG file of the generated QR code?"
  puts "\n"
  png_name = gets.chomp
  qrcode = RQRCode::QRCode.new(target)
  png = qrcode.as_png({ :size => 500 })
  IO.binwrite(png_name + ".png", png.to_s)
  puts "\nYou should see your new QR code in the Explorer. Enjoy!"
  puts "\n"
elsif response == "4"
  puts "Bye, see you next time!"
else
  puts "Sorry, I don't recognize that input. You'll have to start again."
end
