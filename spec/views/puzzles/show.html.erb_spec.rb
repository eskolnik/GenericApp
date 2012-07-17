require 'spec_helper'

describe "puzzles/show" do
  before(:each) do
    @puzzle = assign(:puzzle, stub_model(Puzzle,
      :user_id => 1,
      :title => "Title",
      :descr => "MyText",
      :approved => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
