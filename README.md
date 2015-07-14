# Less Rails Jasny Bootstrap


The `less-rails-jasny-bootstrap` project makes [Jasny Bootstrap](http://jasny.github.io/bootstrap/)'s source LESS files, compiled CSS, and JavaScript files available in the Rails 3.x and 4.x asset pipeline.

The benefits:

* Assets are namespaced in yasny/bootstrap to avoid asset conflicts.
* Top level requires to get all stylesheets or javascripts.
* Ability to import or require individually namespaced stylesheets or javascripts.


## Installation

LESS requires a JavaScript runtime to work. Which one you use depends on your Ruby implementation. Two are shown for Ruby (MRI) and JRuby. Add only the relevant one to your Gemfile. If you want to use Jasny Bootstrap's JavaScript plugins, also add the `jquery-rails` gem. Finally, add `less-rails-bootstrap` and `less-jasny-rails-bootstrap` and run `bundle install`.

```ruby
# Gemfile

gem 'therubyracer'  # If using Ruby
gem 'therubyrhino'  # If using JRuby
gem 'jquery-rails'  # If using Bootstrap's JS plugins.
gem 'less-rails-bootstrap'
gem 'less-jasny-rails-bootstrap'
```

## Basic CSS Use

### Simple way

Get the full Jasny Bootstrap stylesheet with a single line in your `application.css`.

```
/*
 *= require jasny/bootstrap
 */
```


## Basic JavaScript Use

In `application.js`, require jQuery first. Now you can add all the Bootstrap and Jasny Bootstrap plugins with a single line.

````
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jasny/bootstrap
````

Or include plugins individually.

````
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require jasny/bootstrap/offcanvas
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## Versioning

This gem will directly track the semantic versioning of the Jasny Bootstrap project. Our major and minor versions will always match to theirs, though we may have tiny patch level releases specific to this gem.

## License

[Twitter Bootstrap Project](https://github.com/twbs/bootstrap) - Copyright 2011-2015 Twitter, Inc. Code released under [the MIT license](https://github.com/twbs/bootstrap/blob/master/LICENSE). Docs released under [Creative Commons](https://github.com/twbs/bootstrap/blob/master/docs/LICENSE).

[Less::Rails](https://github.com/metaskills/less-rails) and [Less::Rails::Bootstrap](https://github.com/metaskills/less-rails-bootstrap) - Copyright (c) 2011 Ken Collins, <ken@metaskills.net> and distributed under the MIT license.

[Jasny Bootstrap](https://github.com/jasny/bootstrap) - Copyright 2013 Jasny BV under [the Apache 2.0 license](LICENSE).

Distributed under MIT License.
