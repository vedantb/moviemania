require 'spec_helper'

describe "reviews/new" do
  before(:each) do
    assign(:review, stub_model(Review,
      :content => "MyString",
      :user_id => 1,
      :movie_name => "MyString"
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reviews_path, :method => "post" do
      assert_select "input#review_content", :name => "review[content]"
      assert_select "input#review_user_id", :name => "review[user_id]"
      assert_select "input#review_movie_name", :name => "review[movie_name]"
    end
  end
end
