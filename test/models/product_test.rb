require "application_system_test_case"

class ProductTest < ActiveSupport::TestCase
  test "visiting the homepage" do
    # setup

    # exercice
    visit root_url

    # verify
    assert_selector "h1", text: "Awesome Products"

    # teardown
  end
end
