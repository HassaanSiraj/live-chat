require "test_helper"

class LivechatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @livechat = livechats(:one)
  end

  test "should get index" do
    get livechats_url
    assert_response :success
  end

  test "should get new" do
    get new_livechat_url
    assert_response :success
  end

  test "should create livechat" do
    assert_difference("Livechat.count") do
      post livechats_url, params: { livechat: { inbox: @livechat.inbox } }
    end

    assert_redirected_to livechat_url(Livechat.last)
  end

  test "should show livechat" do
    get livechat_url(@livechat)
    assert_response :success
  end

  test "should get edit" do
    get edit_livechat_url(@livechat)
    assert_response :success
  end

  test "should update livechat" do
    patch livechat_url(@livechat), params: { livechat: { inbox: @livechat.inbox } }
    assert_redirected_to livechat_url(@livechat)
  end

  test "should destroy livechat" do
    assert_difference("Livechat.count", -1) do
      delete livechat_url(@livechat)
    end

    assert_redirected_to livechats_url
  end
end
