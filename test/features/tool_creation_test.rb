require 'test_helper'

class ToolCreationTest < ActionDispatch::IntegrationTest

  def test_user_can_create_a_tool
    visit new_tool_path

    fill_in "Name", with: "Screwdriver"
    fill_in "Price", with: "1199"
    fill_in "Quantity", with: "100"

    click_link_or_button "Create Tool"

    assert_equal current_path, tool_path(Tool.last)

    within(".tool_info") do
      assert page.has_content?("Screwdriver")
      assert page.has_content?("11.99")
      assert page.has_content?("100")
    end
  end
end
