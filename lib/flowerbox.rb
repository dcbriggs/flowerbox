require "flowerbox/version"

module Flowerbox
  def flowerbox *objs
  end

  def self.enable(env)
    if Rails.env == env
      class_eval do
        def flowerbox *objs
          info "=" * 80
          info caller[1]
          objs.each do |o|
            info "-" * 80
            info o.inspect
          end
          info "=" * 80
        end
      end
    end
  end

  enable "development"
end


ActiveSupport::BufferedLogger.send(:include, Flowerbox)
Logger.send(:include, Flowerbox)


