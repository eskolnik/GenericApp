require 'spec_helper'

describe "puzzles/index" do
  before(:each) do
    assign(:puzzles, [
      stub_model(Puzzle,
        :user_id => 1,
        :title => "Title",
        :descr => "MyText",
        :approved => false
      ),
      stub_model(Puzzle,
        :user_id => 1,
        :title => "Title",
        :descr => "MyText",
        :approved => false
      )
    ])
  end

  it "renders a list of puzzles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
