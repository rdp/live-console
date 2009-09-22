class LiveConsole::IOMethods::SocketIO
	DefaultOpts = {
		:host => '127.0.0.1',
	}.freeze
	RequiredOpts = DefaultOpts.keys + [:port]

	include LiveConsole::IOMethods::IOMethod

	def start
             
                begin
		  @server ||= TCPServer.new host, port
                rescue => e
                  puts "unable to start live console server #{e}"
                  raise e
                end

		begin
			IO.select([server])
			self.raw_input = self.raw_output = server.accept
			return true
		rescue Errno::EAGAIN, Errno::ECONNABORTED, Errno::EPROTO,
			   Errno::EINTR => e
			select
			retry
		end
	end

	def stop
		select
		raw_input.close rescue nil
	end

end
