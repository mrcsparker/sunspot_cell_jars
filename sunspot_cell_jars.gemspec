Gem::Specification.new do |s|
  s.name        = "sunspot_cell_jars"
  s.version     = "0.2"
  s.authors     = [ "Chris Parker" ]
  s.email       = "mrcsparker@gmail.com"
  s.homepage    = "http://github.com/mrcsparker/sunspot_cell_jars"
  s.summary     = %q{Gem that installs the apache-solr-cells jars for sunspot_cell}
  s.description = %q{Gem that installs the apache-solr-cells jars for sunspot_cell}
  s.files         = `git ls-files`.split("\n") + %w(LICENSE README.textile HISTORY)

  s.rubyforge_project = s.name

  s.require_paths = ["lib"]

end
