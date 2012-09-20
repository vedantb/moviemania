require 'spec_helper'

describe "reviews/index" do
  before(:each) do
    assign(:reviews, [
      stub_model(Review,
        :content => "Content",
        :user_id => 1,
        :movie_name => "Movie Name"
      ),
      stub_model(Review,
        :content => "Content",
        :user_id => 1,
        :movie_name => "Movie Name"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Movie Name".to_s, :count => 2
  end
end
