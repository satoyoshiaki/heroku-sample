require "application_system_test_case"

class HerokublogsTest < ApplicationSystemTestCase
  setup do
    @herokublog = herokublogs(:one)
  end

  test "visiting the index" do
    visit herokublogs_url
    assert_selector "h1", text: "Herokublogs"
  end

  test "creating a Herokublog" do
    visit herokublogs_url
    click_on "New Herokublog"

    fill_in "Context", with: @herokublog.context
    fill_in "Title", with: @herokublog.title
    click_on "Create Herokublog"

    assert_text "Herokublog was successfully created"
    click_on "Back"
  end

  test "updating a Herokublog" do
    visit herokublogs_url
    click_on "Edit", match: :first

    fill_in "Context", with: @herokublog.context
    fill_in "Title", with: @herokublog.title
    click_on "Update Herokublog"

    assert_text "Herokublog was successfully updated"
    click_on "Back"
  end

  test "destroying a Herokublog" do
    visit herokublogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Herokublog was successfully destroyed"
  end
end
