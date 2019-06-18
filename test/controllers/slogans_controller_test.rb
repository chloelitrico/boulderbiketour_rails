require 'test_helper'

class SlogansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @slogan = slogans(:one)
  end

  test "should get index" do
    get slogans_url, as: :json
    assert_response :success
  end

  test "should create slogan" do
    assert_difference('Slogan.count') do
      post slogans_url, params: { slogan: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show slogan" do
    get slogan_url(@slogan), as: :json
    assert_response :success
  end

  test "should update slogan" do
    patch slogan_url(@slogan), params: { slogan: {  } }, as: :json
    assert_response 200
  end

  test "should destroy slogan" do
    assert_difference('Slogan.count', -1) do
      delete slogan_url(@slogan), as: :json
    end

    assert_response 204
  end
end
