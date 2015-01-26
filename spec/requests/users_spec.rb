require 'rails_helper'

RSpec.describe "Users", :type => :request do

  #render_views
 
  describe "signup" do
    
    before { visit signup_path }
    let(:submit) { "Create my account" }

  	describe "failure" do

  	  it "should not make a new user" do
        visit signup_path
  	  	expect{
  	  	  post "/users", :user => {:name => ""}
          post "/users", :user => {:Email => ""}
          post "/users", :user => {:password => ""}
          post "/users", :user => {:confirmation => ""}
          click_button submit
          expect(response).to render_template(:new)
          expect(response.body).to include('div id="error_explanation"')
        }.to_not change(User, :count)
      end
  	end

  	describe "success" do

  	  it "should make a new user" do
  	  	visit signup_path 
  	  	expect{
          fill_in "Name", :with => "Example User" 
  	  	  #post "/users", :user => {:name => "Noa di Stavro"}
          fill_in "Email", :with => "noa@dude.org" 
          #post "/users", :user => {:Email => "noa@dude.org"}
          fill_in "Password", :with => "noanoa"
          #post "/users", :user => {:password => "noanoa"}
          #post "/users", :user => {:confirmation => "noanoa"}
          click_button submit
          #puts(response.body)
          #expect(response).to include('div.flash.success')
          expect(response).to render_template(:show)
        }.to change(User, :count)
      end
  	end

  end
end
