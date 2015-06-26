require 'socket'

server = TCPServer.open(2000)
loop {
	client = server.accept
	request = client.read_nonblock(256)
	puts request
	client.puts "Closing the connection.  Bye!"
	client.close
}