require 'em-synchrony'
require 'minitest/unit'

# Patch test::unit to run stuff inside the EM reactor
module MiniTest
  class Unit
 
      alias_method :original_run, :run
 
      def run(*args, &block)
        result = nil
        EM.synchrony do
          result = original_run(*args, &block)
          EM.stop
        end
        result
      end
      
  end
end
