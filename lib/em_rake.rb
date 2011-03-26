require 'em-synchrony'

# Patch rake to run stuff inside the EM reactor
# http://blog.carbonfive.com/2011/02/03/raking-and-testing-with-eventmachine/
module Rake
  class Application
 
    alias_method :top_level_alias, :top_level
 
    def top_level
      EM.synchrony do
        top_level_alias
        EM.stop
      end
    end
 
  end
end
