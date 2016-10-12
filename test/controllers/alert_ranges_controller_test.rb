require 'test_helper'

class AlertRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alert_range = alert_ranges(:one)
  end

  test "should get index" do
    get alert_ranges_url
    assert_response :success
  end

  test "should get new" do
    get new_alert_range_url
    assert_response :success
  end

  test "should create alert_range" do
    assert_difference('AlertRange.count') do
      post alert_ranges_url, params: { alert_range: { end_time: @alert_range.end_time, interval: @alert_range.interval, start_time: @alert_range.start_time, status: @alert_range.status } }
    end

    assert_redirected_to alert_range_url(AlertRange.last)
  end

  test "should show alert_range" do
    get alert_range_url(@alert_range)
    assert_response :success
  end

  test "should get edit" do
    get edit_alert_range_url(@alert_range)
    assert_response :success
  end

  test "should update alert_range" do
    patch alert_range_url(@alert_range), params: { alert_range: { end_time: @alert_range.end_time, interval: @alert_range.interval, start_time: @alert_range.start_time, status: @alert_range.status } }
    assert_redirected_to alert_range_url(@alert_range)
  end

  test "should destroy alert_range" do
    assert_difference('AlertRange.count', -1) do
      delete alert_range_url(@alert_range)
    end

    assert_redirected_to alert_ranges_url
  end
end
