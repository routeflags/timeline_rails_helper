# frozen_string_literal: true

require "test_helper"

class SchedulesControllerTest < ActionController::TestCase
  test "controller has index action" do
    get :index
    assert_equal 200, response.status
  end

  test "index page print time line" do
    get :index
    assert_equal true, response.body.match("2022-01-25").present?
  end
end
