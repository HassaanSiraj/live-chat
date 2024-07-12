require "application_system_test_case"

class LivechatsTest < ApplicationSystemTestCase
  setup do
    @livechat = livechats(:one)
  end

  test "visiting the index" do
    visit livechats_url
    assert_selector "h1", text: "Livechats"
  end

  test "should create livechat" do
    visit livechats_url
    click_on "New livechat"

    fill_in "Inbox", with: @livechat.inbox
    click_on "Create Livechat"

    assert_text "Livechat was successfully created"
    click_on "Back"
  end

  test "should update Livechat" do
    visit livechat_url(@livechat)
    click_on "Edit this livechat", match: :first

    fill_in "Inbox", with: @livechat.inbox
    click_on "Update Livechat"

    assert_text "Livechat was successfully updated"
    click_on "Back"
  end

  test "should destroy Livechat" do
    visit livechat_url(@livechat)
    click_on "Destroy this livechat", match: :first

    assert_text "Livechat was successfully destroyed"
  end
end
