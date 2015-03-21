require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "Some user",
        email: "some@email.com",
        role: 'user',
        password: 'Test12345'
      ),
      User.create!(
        name: "Some Admin",
        email: "some-other@email.com",
        role: "admin",
        password: 'Test12345'
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Some user".to_s, :count => 1
    assert_select "tr>td", :text => "Some Admin".to_s, :count => 1
  end
end
