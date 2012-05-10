# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','smithy_version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'software_smithy'
  s.version = Smithy::VERSION
  s.author = 'Anthony DiGirolamo'
  s.email = 'anthony.digirolamo@gmail.com'
  s.homepage = 'http://anthonydigirolamo.github.com'
  s.platform = Gem::Platform::RUBY
  s.summary = %q{Smithy can help maintain a collection of software installed from source. Typically, many different versions built with different compilers.}
  s.files = %w(
bin/smithy
bin/smithy
etc/completion/smithy-completion.bash
etc/completion/zsh/_smithy
etc/smithyrc
etc/templates/modulefile.erb
etc/templates/build/.owners
etc/templates/build/build-notes
etc/templates/build/dependencies
etc/templates/build/rebuild
etc/templates/build/relink
etc/templates/build/remodule.erb
etc/templates/build/retest
etc/templates/build/status
etc/templates/package/.check4newver
etc/templates/package/.exceptions
etc/templates/package/description
etc/templates/package/support
etc/templates/package/versions
etc/templates/web/alphabetical.html.erb
etc/templates/web/category.html.erb
etc/templates/web/package.html.erb
lib/smithy.rb
lib/smithy/description.rb
lib/smithy/format.rb
lib/smithy/helpers.rb
lib/smithy/package.rb
lib/smithy/module_file.rb
lib/smithy/file_operations.rb
lib/smithy_version.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','smithy.rdoc']
  s.rdoc_options << '--title' << 'smithy' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'smithy'
  s.add_development_dependency('debugger')
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('ronn')
  s.add_dependency('gli')
  s.add_dependency('kramdown')
  s.add_dependency('open4')
  s.add_dependency('rainbow')
  s.add_dependency('terminal-table', '< 1.4.5')
end
