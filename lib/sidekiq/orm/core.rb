
# dependencies
require 'sidekiq'

# core
require 'sidekiq/orm/core/version'

module Sidekiq
  module Orm
    module Core
      extend ActiveSupport::Autoload

      autoload :TaskWorker
      autoload :ManagerWorker
    end
  end
end
