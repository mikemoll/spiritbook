require 'rails_helper'

RSpec.describe "entries/show", :type => :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :title => "MyText",
      :entry => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
