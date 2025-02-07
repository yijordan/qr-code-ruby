# Write your solution here!
require "rqrcode"
# qrcode = RQRCode::QRCode.new("SMSTO:5102135718:Hi Mantha! It's Jordan. I'm sending this text through a QR code that I coded in class. Hope you're having fun at sushi :)")
# png = qrcode.as_png({ :size => 500 })
# IO.binwrite("sometext.png", png.to_s)

puts "Hi! I'm your QR code generator. I can make you a unique QR code to do one of the following:\n\n"
  puts "1. Open a URL\n"
  puts "2. Join a wifi network\n"
  puts "3. Send a text message\n\n"
puts "Enter the number of the QR code type you want, or enter 4 to exit."
