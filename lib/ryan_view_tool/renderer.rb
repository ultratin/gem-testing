# frozen_string_literal: true

module RyanViewTool
  class Renderer
    def self.copyright(name, message)
      "&copy; #{Time.zone.now.year} | <strong>#{name}</strong> #{message}".html_safe
    end
  end
end
