require "test_helper"

class LibrariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @library = libraries(:one)
  end

  test "should get index" do
    get libraries_url, as: :json
    assert_response :success
  end

  test "should create library" do
    assert_difference("Library.count") do
      post libraries_url, params: { library: { body: @library.body, title: @library.title } }, as: :json
    end

    assert_response :created
  end

  test "should show library" do
    get library_url(@library), as: :json
    assert_response :success
  end

  test "should update library" do
    patch library_url(@library), params: { library: { body: @library.body, title: @library.title } }, as: :json
    assert_response :success
  end

  test "should destroy library" do
    assert_difference("Library.count", -1) do
      delete library_url(@library), as: :json
    end

    assert_response :no_content
  end
end
