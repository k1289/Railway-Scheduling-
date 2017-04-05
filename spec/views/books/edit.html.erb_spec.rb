require 'spec_helper'

describe "books/edit" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :fiction => "MyText"
    ))
  end

  it "renders the edit book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => books_path(@book), :method => "post" do
      assert_select "textarea#book_fiction", :name => "book[fiction]"
    end
  end
end
