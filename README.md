Sasset
======

Asset hosts with SASS/SCSS

Installation
------------

Add this to your `Gemfile`:

    gem 'sasset'

Then run `bundle install`.

Usage
-----

First, in your `config/application.rb` file, set your asset host.

    Sasset.asset_host = 'http://example.com'

This can also be a Proc. It works the same way as `ActionController::Base.asset_host`
so feel free to set them to the same thing. See [ActionView::Helpers::AssetTagHelper](http://api.rubyonrails.org/classes/ActionView/Helpers/AssetTagHelper.html)
for more information.

Now anywhere in your SASS/SCSS, you can now use the `asset-url()` function.

    // Compiles to: background-image: url('http://example.com/bg.png');
    background-image: asset-url('bg.png');

Cool stuff.

Author
------

Sasset is written by [Alexander Kern](http://kernpedia.com).

License
-------

See the LICENSE file for details (it's the MIT License).