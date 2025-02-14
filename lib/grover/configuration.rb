# frozen_string_literal: true

class Grover
  #
  # Configuration of the options for Grover HTML to PDF conversion
  #
  class Configuration
    attr_accessor :options, :meta_tag_prefix, :ignore_path, :ignore_request,
                  :root_url, :use_pdf_middleware, :use_png_middleware,
                  :use_jpeg_middleware, :js_runtime_bin,
                  :node_env_vars, :allow_file_uris

    def initialize # rubocop:disable Metrics/MethodLength
      @options = {}
      @meta_tag_prefix = 'grover-'
      @ignore_path = nil
      @ignore_request = nil
      @root_url = nil
      @use_pdf_middleware = true
      @use_png_middleware = false
      @use_jpeg_middleware = false
      @js_runtime_bin = ['node']
      @node_env_vars = {}
      @allow_file_uris = false
    end
  end
end
