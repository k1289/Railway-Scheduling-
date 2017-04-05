require 'spec_helper'

describe "comments/show" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :post => nil,
      :author => "Author",
      :email => "Email",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Author/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
  end
end
