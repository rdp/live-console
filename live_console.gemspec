SPEC = Gem::Specification.new { |s|
	s.name = 	'live_console'
	s.version =	'0.2.1'
	s.author = 	'Pete Elmore'
	s.email = 	'pete.elmore@gmail.com'
	s.homepage =	'http://debu.gs/live-console'
	s.rubyforge_project = 'live-console'
	s.platform =	Gem::Platform::RUBY
	s.summary =	
	    'A library to support adding a console to your running application.'
	s.files = Dir.glob("{bin,doc,lib}/**/*").delete_if { |file|
		[ /\/rdoc\//i,     # No rdoc
		].find { |rx| rx.match file }
	}
        
	Dir['bin/*'].map(&File.method(:basename)
		).map(&s.executables.method(:<<))
	s.require_path 'lib'
	s.extra_rdoc_files = Dir['doc/*'].select(&File.method(:file?))
}

if __FILE__ == $0
	Gem::Builder.new(SPEC).build
end
