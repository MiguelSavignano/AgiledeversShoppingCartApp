require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :title => "Title",
        :image_url => "Image Url",
        :image_name => "Image Name"
      ),
      Product.create!(
        :title => "Title",
        :image_url => "Image Url",
        :image_name => "Image Name"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Image Name".to_s, :count => 2
  end
end
