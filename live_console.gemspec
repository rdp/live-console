# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{live_console}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pete Elmore"]
  s.date = %q{2009-05-22}
  s.description = %q{A library to support adding a console to your running application.}
  s.summary = 'A library to support adding a console to your running application.'
  s.email = ["pete.elmore@gmail.com"]
  s.executables = ["udscat"]
  s.extra_rdoc_files = Dir['doc/*'].select(&File.method(:file?))
  s.files = Dir.glob("{bin,doc,lib}/**/*").delete_if { |file|
                [ /\/rdoc\//i,     # No rdoc
                ].find { |rx| rx.match file }
        }

  s.homepage = %q{http://debu.gs/live-console}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{live-console}
  s.rubygems_version = %q{1.3.3}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

  else
  end
end
