require 'test_helper'

# $ rails test test/controllers/api/v1/slogans_controller_test.rb


class Api::V1::SlogansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slogan = slogans(:one)
  end

  test "should get index" do
    get api_v1_slogans_url, as: :json
    assert_response :success
  end

  test "should create slogan" do
    assert_difference('Slogan.count') do
      post api_v1_slogans_url, params: { slogan: { first_name: slogans(:one).first_name,
      last_name: slogans(:one).last_name,
      email: slogans(:one).email,
      description: slogans(:one).description
      } }, as: :json
    end
    assert_response :success
  end
end
