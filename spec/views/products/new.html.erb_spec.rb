require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :title => "MyString",
      :image_url => "MyString",
      :image_name => "MyString"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "input#product_image_url[name=?]", "product[image_url]"

      assert_select "input#product_image_name[name=?]", "product[image_name]"
    end
  end
end
