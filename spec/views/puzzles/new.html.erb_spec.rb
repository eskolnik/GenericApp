require 'spec_helper'

describe "puzzles/new" do
  before(:each) do
    assign(:puzzle, stub_model(Puzzle,
      :user_id => 1,
      :title => "MyString",
      :descr => "MyText",
      :approved => false
    ).as_new_record)
  end

  it "renders new puzzle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => puzzles_path, :method => "post" do
      assert_select "input#puzzle_user_id", :name => "puzzle[user_id]"
      assert_select "input#puzzle_title", :name => "puzzle[title]"
      assert_select "textarea#puzzle_descr", :name => "puzzle[descr]"
      assert_select "input#puzzle_approved", :name => "puzzle[approved]"
    end
  end
end
