require 'rails_helper'

RSpec.describe "photos/edit", :type => :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :title => "MyText",
      :description => "MyText",
      :user => nil
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "textarea#photo_title[name=?]", "photo[title]"

      assert_select "textarea#photo_description[name=?]", "photo[description]"

      assert_select "input#photo_user_id[name=?]", "photo[user_id]"
    end
  end
end
