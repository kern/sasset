require 'sass'
require 'version'

module Sasset
  class << self
    attr_accessor :asset_host

    def asset_url(source)
      source = "assets/#{source}"
      if asset_host.respond_to? :call
        prefix = asset_host.call(source)
      else
        prefix = asset_host || ''
      end

      mtime = File.new(File.join(Rails.root, 'app', source)).mtime.to_i
      File.join(prefix, "#{source}?#{mtime}")
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
