require "test_helper"

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test "get new Category Foam and create new Category" do
    get "/categories/new"
    assert_response :success
    assert_difference "Category.count", 1 do
    post categories_path, params: { category: { name: "Sports" } }
    assert_response :redirect
  end
  follow_redirect!
  assert_response :success
  assert_match "Category was successfully created", response.body
  assert_match "Sports", response.body
  end


 test "get new Category Foam and Reject invalid Category Submission" do
    get "/categories/new"
    assert_response :success
    assert_no_difference "Category.count"  do
    post categories_path, params: { category: { name: " " } }
  end
  assert_match "errors", response.body
  assert_select "div.alert"
  end

end
