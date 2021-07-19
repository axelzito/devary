require "test_helper"

class DailyEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @daily_entry = daily_entries(:one)
  end

  test "should get index" do
    get daily_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_daily_entry_url
    assert_response :success
  end

  test "should create daily_entry" do
    assert_difference('DailyEntry.count') do
      post daily_entries_url, params: { daily_entry: { content: @daily_entry.content, title: @daily_entry.title, user_id: @daily_entry.user_id } }
    end

    assert_redirected_to daily_entry_url(DailyEntry.last)
  end

  test "should show daily_entry" do
    get daily_entry_url(@daily_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_daily_entry_url(@daily_entry)
    assert_response :success
  end

  test "should update daily_entry" do
    patch daily_entry_url(@daily_entry), params: { daily_entry: { content: @daily_entry.content, title: @daily_entry.title, user_id: @daily_entry.user_id } }
    assert_redirected_to daily_entry_url(@daily_entry)
  end

  test "should destroy daily_entry" do
    assert_difference('DailyEntry.count', -1) do
      delete daily_entry_url(@daily_entry)
    end

    assert_redirected_to daily_entries_url
  end
end
