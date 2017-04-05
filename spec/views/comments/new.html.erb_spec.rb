require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :post => nil,
      :author => "MyString",
      :email => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path, :method => "post" do
      assert_select "input#comment_post", :name => "comment[post]"
      assert_select "input#comment_author", :name => "comment[author]"
      assert_select "input#comment_email", :name => "comment[email]"
      assert_select "textarea#comment_content", :name => "comment[content]"
    end
  end
end
