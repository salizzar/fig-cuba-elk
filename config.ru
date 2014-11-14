require 'cuba'

Cuba.define do
  on root do
    res.write('Hello world!')
  end
end

logger = File.new('./log/xalala.log', 'a+')
logger.sync = true

use(Rack::CommonLogger, logger)
run(Cuba)
