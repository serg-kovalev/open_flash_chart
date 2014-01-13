lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'open_flash_chart'

Gem::Specification.new do |spec|
  spec.name = "open_flash_chart"
  spec.version = OpenFlashChart::VERSION
  spec.authors = [ 'Siarhei Kavaliou, Charlie pullmonkey' ]
  spec.email = 'siarhei_kavaliou@epam.com'
  spec.summary = 'OpenFlashChart - Powerful open source charts'
  spec.homepage = 'https://github.com/serg-kovalev/open_flash_chart'
  spec.license = 'MIT'
  spec.date = Time.now.strftime('%Y-%m-%d')

  spec.files = `git ls-files`.split($/) 
  spec.require_paths = ['lib']

  spec.add_dependency 'rails'

  spec.description = <<desc
OpenFlashChart - Powerful open source charts
desc
end
