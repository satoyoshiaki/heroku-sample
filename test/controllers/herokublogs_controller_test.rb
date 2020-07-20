require 'test_helper'

class HerokublogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @herokublog = herokublogs(:one)
  end

  test "should get index" do
    get herokublogs_url
    assert_response :success
  end

  test "should get new" do
    get new_herokublog_url
    assert_response :success
  end

  test "should create herokublog" do
    assert_difference('Herokublog.count') do
      post herokublogs_url, params: { herokublog: { context: @herokublog.context, title: @herokublog.title } }
    end

    assert_redirected_to herokublog_url(Herokublog.last)
  end

  test "should show herokublog" do
    get herokublog_url(@herokublog)
    assert_response :success
  end

  test "should get edit" do
    get edit_herokublog_url(@herokublog)
    assert_response :success
  end

  test "should update herokublog" do
    patch herokublog_url(@herokublog), params: { herokublog: { context: @herokublog.context, title: @herokublog.title } }
    assert_redirected_to herokublog_url(@herokublog)
  end

  test "should destroy herokublog" do
    assert_difference('Herokublog.count', -1) do
      delete herokublog_url(@herokublog)
    end

    assert_redirected_to herokublogs_url
  end
end
