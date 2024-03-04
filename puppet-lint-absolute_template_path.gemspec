Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-absolute_template_path'
  spec.version     = '2.0.0'
  spec.homepage    = 'https://github.com/deanwilson/puppet-lint-absolute_template_path-check'
  spec.license     = 'MIT'
  spec.author      = 'Dean Wilson'
  spec.email       = 'dean.wilson@gmail.com'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'puppet-lint absolute template path check'
  spec.description = <<-END_OF_DESCRIPTION
    A new check for puppet-lint that checks all template paths are in the
    template('example/template.erb') form rather than
    template('/etc/puppet/modules/example/templates/template.erb')
  END_OF_DESCRIPTION

  spec.required_ruby_version = '>= 2.7.0'

  spec.add_dependency             'puppet-lint', '>= 1.1', '< 5.0'

  spec.add_development_dependency 'rake', '~> 13.1.0'
  spec.add_development_dependency 'rspec', '~> 3.12.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-json_expectations', '~> 2.2'
  spec.add_development_dependency 'rubocop', '~> 1.61.0'
  spec.add_development_dependency 'rubocop-rake'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.25.0'
  spec.add_development_dependency 'simplecov', '~> 0.22.0'
end
