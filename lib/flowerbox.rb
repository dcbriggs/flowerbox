require "flowerbox/version"

module Flowerbox
  if Rails.env == "development"
    def flowerbox *objs
      info "=" * 80
      info caller[0]
      objs.each do |o|
        info "-" * 80
        info o.inspect
      end
      info "=" * 80
    end
  else
    def flowerbox *objs
    end
  end
end

ActiveSupport::BufferedLogger.send(:include, Flowerbox)
