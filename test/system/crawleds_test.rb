require "application_system_test_case"

class CrawledsTest < ApplicationSystemTestCase
  setup do
    @crawled = crawleds(:one)
  end

  test "visiting the index" do
    visit crawleds_url
    assert_selector "h1", text: "Crawleds"
  end

  test "creating a Crawled" do
    visit crawleds_url
    click_on "New Crawled"

    fill_in "Email", with: @crawled.email
    fill_in "Phone", with: @crawled.phone
    click_on "Create Crawled"

    assert_text "Crawled was successfully created"
    click_on "Back"
  end

  test "updating a Crawled" do
    visit crawleds_url
    click_on "Edit", match: :first

    fill_in "Email", with: @crawled.email
    fill_in "Phone", with: @crawled.phone
    click_on "Update Crawled"

    assert_text "Crawled was successfully updated"
    click_on "Back"
  end

  test "destroying a Crawled" do
    visit crawleds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crawled was successfully destroyed"
  end
end
