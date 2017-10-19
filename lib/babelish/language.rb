module Babelish
  class Language
    attr_accessor :name, :content, :code, :regions

    def initialize(name, content = {})
      @name = name
      @content = content
    end

    def add_content_pair(key, value)
      @content[key] = value
    end

    def add_language_id(language_id)
      code, region = language_id.split('-')
      @code ||= code
      @regions ||= []
      @regions << region if region
    end

    def region
      @regions.first
    end
    
    def content_for_key(key)
      return @content[:key]
    end
    
  end
end
