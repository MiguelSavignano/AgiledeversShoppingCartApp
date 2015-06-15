require 'rails_helper'

RSpec.describe "articles/edit", type: :view do
  before(:each) do
    @article = assign(:article, Article.create!(
      :title => "MyString",
      :image_url => "MyString",
      :image_name => "MyString"
    ))
  end

  it "renders the edit article form" do
    render

    assert_select "form[action=?][method=?]", article_path(@article), "post" do

      assert_select "input#article_title[name=?]", "article[title]"

      assert_select "input#article_image_url[name=?]", "article[image_url]"

      assert_select "input#article_image_name[name=?]", "article[image_name]"
    end
  end
end
