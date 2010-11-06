require 'sass'

module Sasset
  VERSION = '1.0.0'
  
  class << self
    attr_accessor :asset_host
    
    def asset_url(source)
      if asset_host.respond_to? :call
        prefix = asset_host.call(source)
      else
        prefix = asset_host || ''
      end
      
      File.join(prefix, source)
    end
  end
  
  module Functions
    def asset_url(asset)
      url = Sasset.asset_url(asset.value)
      Sass::Script::String.new("url('#{url}')")
    end
  end
end

module Sass::Script::Functions
  include Sasset::Functions
end