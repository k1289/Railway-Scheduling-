require 'spec_helper'

describe "comments/edit" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :post => nil,
      :author => "MyString",
      :email => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => comments_path(@comment), :method => "post" do
      assert_select "input#comment_post", :name => "comment[post]"
      assert_select "input#comment_author", :name => "comment[author]"
      assert_select "input#comment_email", :name => "comment[email]"
      assert_select "textarea#comment_content", :name => "comment[content]"
    end
  end
end
