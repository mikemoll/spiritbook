require 'rails_helper'

RSpec.describe "entries/new", :type => :view do
  before(:each) do
    assign(:entry, Entry.new(
      :title => "MyText",
      :entry => "MyText",
      :user => nil
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "textarea#entry_title[name=?]", "entry[title]"

      assert_select "textarea#entry_entry[name=?]", "entry[entry]"

      assert_select "input#entry_user_id[name=?]", "entry[user_id]"
    end
  end
end
