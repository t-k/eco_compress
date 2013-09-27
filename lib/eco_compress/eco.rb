require "eco" unless defined?(Eco)
require "htmlcompressor" unless defined?(HtmlCompressor)

Eco.class_eval do
  def self.compile(template)
    begin
      template = template.read if template.respond_to?(:read)
      compressor = HtmlCompressor::Compressor.new
      compressed = compressor.compress template
      ::Eco::Source.context.call("eco.precompile", compressed)
    rescue => e
      template = template.read if template.respond_to?(:read)
      ::Eco::Source.context.call("eco.precompile", template)
    end
  end
end