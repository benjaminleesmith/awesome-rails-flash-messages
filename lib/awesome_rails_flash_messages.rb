class Railtie < Rails::Railtie
  initializer 'awesome_rails_flash_messages' do |app|
    ActiveSupport.on_load(:action_controller) do
      ActionController::Base.send(:include, Filter)
    end
  end
end

module Filter
  extend ActiveSupport::Concern

  included do
    append_before_filter :awesomize_flash_messages
  end
  
  def awesomize_flash_messages
    ::ApplicationController.send(:define_method, :render) do |*args|
      begin
        flash[:notice].upcase!.gsub!(/\.\z/, '') << '!'*10 << 5.times.collect{ rand(2) == 0 ? '1' : '!'}.join
      rescue
      end
      super(*args)
    end
  end
end

