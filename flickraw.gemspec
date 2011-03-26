# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{em-flickraw}
  s.version = "0.8.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mael Clerambault", "Jens Kraemer"]
  s.date = %q{2011-03-26}
  s.email = %q{jk@jkraemer.net}
  s.files = ["lib/flickraw.rb", "flickraw_rdoc.rb", "LICENSE", "README.rdoc", "rakefile", "examples/auth.rb", "examples/flickr_KDE.rb", "examples/interestingness.rb", "examples/upload.rb", "test/basic_test.rb", "test/em_minitest.rb", "test/test_helper.rb", "test/upload_test.rb"]
  s.homepage = %q{http://github.com/jkraemer/flickraw/}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("~> 1.9")
  s.rubygems_version = %q{1.5.3}
  s.summary = %q{Event machine based flickr library with a syntax close to the syntax described on http://www.flickr.com/services/api}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 1.1.1"])
      s.add_runtime_dependency(%q<eventmachine>, [">= 1.0.0.beta.3"])
      s.add_runtime_dependency(%q<em-http-request>, ["= 1.0.0.beta.3"])
      s.add_runtime_dependency(%q<em-synchrony>, ["= 0.3.0.beta.1"])
    else
      s.add_dependency(%q<json>, [">= 1.1.1"])
      s.add_dependency(%q<eventmachine>, [">= 1.0.0.beta.3"])
      s.add_dependency(%q<em-http-request>, ["= 1.0.0.beta.3"])
      s.add_dependency(%q<em-synchrony>, ["= 0.3.0.beta.1"])
    end
  else
    s.add_dependency(%q<json>, [">= 1.1.1"])
    s.add_dependency(%q<eventmachine>, [">= 1.0.0.beta.3"])
    s.add_dependency(%q<em-http-request>, ["= 1.0.0.beta.3"])
    s.add_dependency(%q<em-synchrony>, ["= 0.3.0.beta.1"])
  end
end
