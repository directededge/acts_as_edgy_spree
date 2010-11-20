# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class ActsAsEdgySpreeExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/acts_as_edgy_spree"

  # Please use acts_as_edgy_spree/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate

    # make your helper avaliable in all views
    # Spree::BaseController.class_eval do
    #   helper YourHelper
    # end
  end
end
