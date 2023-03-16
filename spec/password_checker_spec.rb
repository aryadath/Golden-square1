require 'password_checker'

RSpec.describe PasswordChecker do
  it 'returns true if password is more than 8' do
    password_checker = PasswordChecker.new
    expect(password_checker.check('makersacademy')).to eq true
  end

  it 'password is less than 8' do
    password_checker = PasswordChecker.new
    expect {password_checker.check('cow') }.to raise_error "Invalid password, must be 8+ characters."
  end
end