require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :title => "MyString",
      :image_url => "MyString",
      :image_name => "MyString"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "input#product_image_url[name=?]", "product[image_url]"

      assert_select "input#product_image_name[name=?]", "product[image_name]"
    end
  end
end
