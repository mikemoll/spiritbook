require 'rails_helper'

RSpec.describe "photos/new", :type => :view do
  before(:each) do
    assign(:photo, Photo.new(
      :title => "MyText",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "textarea#photo_title[name=?]", "photo[title]"

      assert_select "textarea#photo_description[name=?]", "photo[description]"

      assert_select "input#photo_user_id[name=?]", "photo[user_id]"
    end
  end
end
