require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      :title => "MyString",
      :image_url => "MyString",
      :image_name => "MyString"
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "input#article_image_url[name=?]", "article[image_url]"

      assert_select "input#article_image_name[name=?]", "article[image_name]"
    end
  end
end
