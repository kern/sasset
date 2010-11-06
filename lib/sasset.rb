require 'sass'

module Sasset
  VERSION = '0.0.1'
  
  class << self
    attr_accessor :asset_host
    
    def asset_url(source)
      if asset_host.respond_to? :call
        prefix = asset_host.call(source)
      else
        prefix = asset_host
      end
      
      File.join(prefix, source)
    end
  end
  
  module Functions
    def asset_url(url)
      Sass::Script::String.new(Sasset.asset_url(url.value))
    end
  end
end

module Sass::Script::Functions
  include Sasset::Functions
end