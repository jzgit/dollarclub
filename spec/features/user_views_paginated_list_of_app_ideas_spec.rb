require 'spec_helper'

describe 'a user sees a paginated list of apps', %q{

  As a user
  I want to view a paginated list of apps
  So that I dont get overwhelmed
} do

  let(:app1) { FactoryGirl.create(:app) }
  let(:app2) { FactoryGirl.create(:app) }

  it 'displays a paginated list of apps' do
    app1
    app2

    visit apps_path(per: 1)
    expect(page).to     have_content app1.name
    expect(page).to_not have_content app2.name

    click_link "Next"

    expect(page).to_not have_content app1.name
    expect(page).to     have_content app2.name
  end
end
