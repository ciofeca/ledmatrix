#!/usr/bin/env ruby

PORT="/dev/serial/by-id/usb-FTDI_FT232R_USB_UART_A70062FM-if00-port0"
SPEED=9600

oldmin  = -1
dirflag = 'ö'                      # default: USB connector on the right side
dirflag = 'ë'  if ARGV.size > 0    # if any argument: USB connector on the left side
arduino = open(PORT, 'w')
stty    = `stty --file=#{PORT} #{SPEED} raw -echo < #{PORT}`

while true
	sleep 2
	t = Time.now
	if t.min != oldmin
		oldmin = t.min
		arduino.puts "#{dirflag}  #{t.hour}:#{t.min.to_s.rjust(2,'0')}  "
	end
end

