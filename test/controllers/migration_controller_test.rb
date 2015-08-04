require 'test_helper'

class MigrationControllerTest < ActionController::TestCase
  test "should get create_contacts" do
    get :create_contacts
    assert_response :success
  end

end
