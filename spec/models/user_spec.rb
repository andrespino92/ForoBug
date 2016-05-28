require 'rails_helper'

RSpec.describe User, type: :model do
    
    describe "Contact" do
        
        context "with invalid attributes" do
            it "should not be valid" do
                @user = build(:user, firstname: "", lastname: "")
                expect(@user.save).to be false
            end
            
            it "should not be valid username" do
                @user = build(:user, username: "")
                expect(@user.save).to be false
            end
            
            it "should not be valid username" do
                @user = build(:user, username: "")
                expect(@user.save).to be false
            end
           
        end
         
      
    end
    
end
