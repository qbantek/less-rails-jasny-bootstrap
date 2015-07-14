# Less Rails Jasny Bootstrap


Jasny Bootstrap(http://jasny.github.io/bootstrap/) is an extension of the famous [Bootstrap](http://getbootstrap.com/), adding the following components:

* [Button labels](http://jasny.github.io/bootstrap/css/#buttons-labels)
* [Off canvas navmenu](http://jasny.github.io/bootstrap/components/#navmenu)
* [Fixed alerts](http://jasny.github.io/bootstrap/components/#alerts-fixed)
* [Row link](http://jasny.github.io/bootstrap/javascript/#rowlink)
* [Input mask](http://jasny.github.io/bootstrap/javascript/#inputmask)
* [File input widget](http://jasny.github.io/bootstrap/javascript/#fileinput)

To get started, check out <http://jasny.github.io/bootstrap>!

The less-rails-jasny-bootstrap project makes Jasny Bootstrap's source LESS files, compiled CSS, and JavaScript files available in the Rails 3.x and 4.x asset pipeline.

The benefits:

* Assets are namespaced in yasny/bootstrap to avoid asset conflicts.
* Top level requires to get all stylesheets or javascripts.
* Ability to import or require individually namespaced stylesheets or javascripts.


## Installation

LESS requires a JavaScript runtime to work. Which one you use depends on your Ruby implementation. Two are shown for Ruby (MRI) and JRuby. Add only the relevant one to your Gemfile. If you want to use Jasny Bootstrap's JavaScript plugins, also add the `jquery-rails` gem. Finally, add `less-rails-bootstrap and `less-jasny-rails-bootstrap` and run `bundle install`.

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

## Versioning

This gem will directly track the semantic versioning of the Jasny Bootstrap project. Our major and minor versions will always match to theirs, though we may have tiny patch level releases specific to this gem.

## License

Twitter Bootstrap Project: http://twitter.github.com/bootstrap

Copyright 2011 Twitter, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Less::Rails and Less::Rails::Bootstrap are Copyright (c) 2011 Ken Collins, <ken@metaskills.net> and distributed under the MIT license.