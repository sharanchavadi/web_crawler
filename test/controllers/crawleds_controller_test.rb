require 'test_helper'

class CrawledsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crawled = crawleds(:one)
  end

  test "should get index" do
    get crawleds_url
    assert_response :success
  end

  test "should get new" do
    get new_crawled_url
    assert_response :success
  end

  test "should create crawled" do
    assert_difference('Crawled.count') do
      post crawleds_url, params: { crawled: { email: @crawled.email, phone: @crawled.phone } }
    end

    assert_redirected_to crawled_url(Crawled.last)
  end

  test "should show crawled" do
    get crawled_url(@crawled)
    assert_response :success
  end

  test "should get edit" do
    get edit_crawled_url(@crawled)
    assert_response :success
  end

  test "should update crawled" do
    patch crawled_url(@crawled), params: { crawled: { email: @crawled.email, phone: @crawled.phone } }
    assert_redirected_to crawled_url(@crawled)
  end

  test "should destroy crawled" do
    assert_difference('Crawled.count', -1) do
      delete crawled_url(@crawled)
    end

    assert_redirected_to crawleds_url
  end
end
