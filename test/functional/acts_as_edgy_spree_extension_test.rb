require File.dirname(__FILE__) + '/../test_helper'

class ActsAsEdgySpreeExtensionTest < Test::Unit::TestCase
  
  # Replace this with your real tests.
  def test_this_extension
    flunk
  end
  
  def test_initialization
    assert_equal File.join(File.expand_path(Rails.root), 'vendor', 'extensions', 'acts_as_edgy_spree'), ActsAsEdgySpreeExtension.root
    assert_equal 'Acts As Edgy Spree', ActsAsEdgySpreeExtension.extension_name
  end
  
end
