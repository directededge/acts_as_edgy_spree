require 'dispatcher'

Dispatcher.to_prepare do
  User.send(:acts_as_edgy, :purchase, Order, LineItem, Variant, Product)
  ActionView::Base.send(:include, EdgyHelper)
end
