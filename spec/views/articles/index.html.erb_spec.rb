require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        :title => "Title",
        :image_url => "Image Url",
        :image_name => "Image Name"
      ),
      Article.create!(
        :title => "Title",
        :image_url => "Image Url",
        :image_name => "Image Name"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Image Name".to_s, :count => 2
  end
end
