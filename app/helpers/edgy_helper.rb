module EdgyHelper
  def edgy_related(options = {})
    @edgy_related ||=
      if @order
        Product.edgy_related(Set.new(@order.line_items.map { |i| i.product }), options)
      elsif @product
        @product.edgy_related(options)
      elsif current_user
        current_user.edgy_recommended(options)
      else
        []
      end
  end

  alias :edgy_recommended :edgy_related

  def edgy_related_table(orientation = :horizontal, options = {})
    render 'shared/edgy_related_table', :orientation => orientation, :options => options
  end

  def edgy_message
    if @product || (@order && @order.line_items.size == 1)
      "Customers who bought this product also bought:"
    elsif @order
      "Customers who bought these products also bought:"
    elsif current_user
      address = current_user.bill_address
      "Welcome back#{address ? (', ' + address.firstname) : ''}. Here are our recommendations for you:"
    else
      "You might also like:"
    end
  end
end
