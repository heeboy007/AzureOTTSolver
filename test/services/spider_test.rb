require "test_helper"

class SpiderTest < ActiveSupport::TestCase

  def setup
    @spider = Spider.new
  end

  test 'not null when init' do
    assert_not_nil @spider
  end
  
  test 'generate vaild page' do
    page = @spider.generate_page
    assert page.is_a?(Nokogiri::HTML4::Document)
  end
  
end