# puppet-lint absolute template path check

A new check for puppet-lint that checks template paths are in the
relative `template('example/template.erb')` form rather than the absolute
`template('/etc/puppet/modules/example/templates/template.erb')` format.

## Installation

To use this plugin add the following line to your Gemfile

```ruby
gem 'puppet-lint-absolute_template_path'
```

and then run `bundle install`.

## Usage

This plugin provides a new check to `puppet-lint`.

```
WARNING: template module paths should be relative, not absolute on line 5
```
