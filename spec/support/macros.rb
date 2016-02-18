module Macros
  def login
    user = create :user

    visit root_path

    fill_in 'user[email]',    with: user.email
    fill_in 'user[password]', with: user.password

    click_on 'Log in'
  end
end
