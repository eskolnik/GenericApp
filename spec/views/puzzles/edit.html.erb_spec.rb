require 'spec_helper'

describe "puzzles/edit" do
  before(:each) do
    @puzzle = assign(:puzzle, stub_model(Puzzle,
      :user_id => 1,
      :title => "MyString",
      :descr => "MyText",
      :approved => false
    ))
  end

  it "renders the edit puzzle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => puzzles_path(@puzzle), :method => "post" do
      assert_select "input#puzzle_user_id", :name => "puzzle[user_id]"
      assert_select "input#puzzle_title", :name => "puzzle[title]"
      assert_select "textarea#puzzle_descr", :name => "puzzle[descr]"
      assert_select "input#puzzle_approved", :name => "puzzle[approved]"
    end
  end
end
