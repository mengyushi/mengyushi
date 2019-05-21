# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
module ActionDispatch
  class DebugExceptions
    def log_error(request, wrapper)
      logger = logger(request)
      return unless logger
 
      exception = wrapper.exception
 
      trace = wrapper.application_trace
      trace = wrapper.framework_trace if trace.empty?
 
      ActiveSupport::Deprecation.silence do
        message = "#{exception.class} (#{exception.message}):"
        message << exception.annoted_source_code.to_s if exception.respond_to?(:annoted_source_code)
        message << "  " << trace.join("\n  ")
        logger.fatal("#{message}")
      end
    end
  end
end