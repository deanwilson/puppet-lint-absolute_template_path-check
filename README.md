# puppet-lint absolute template path check

[![Actions Status](https://github.com/deanwilson/puppet-lint-absolute_template_path-check/workflows/Ruby/badge.svg)](https://github.com/deanwilson/puppet-lint-absolute_template_path-check/actions)

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

## Other puppet-lint plugins

You can find a list of my `puppet-lint` plugins in the
[unixdaemon puppet-lint-plugins](https://github.com/deanwilson/unixdaemon-puppet-lint-plugins) repo.

### Author

[Dean Wilson](http://www.unixdaemon.net)
