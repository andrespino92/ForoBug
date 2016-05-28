require 'rails_helper'
RSpec.feature "Post nuevo", type: :feature do
  scenario "Creando usuario" do
    user = create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Log in'
    expect(page).to have_content  'Signed in successfully.'
    visit  new_post_path
    
    fill_in 'post_title', :with => 'Prueba validaciones'
    fill_in 'post_description', :with => 'Imagen de validaciones'
    attach_file("Photo", "#{Rails.root}/spec/factories/photobook.jpg")
    click_button 'Create Post'
    
  end
end