require 'password_checker'

RSpec.describe PasswordChecker do
  context 'throws errors correctly' do
    it 'password is not greater than or equal to 8' do
      password_checker = PasswordChecker.new
      password_checker.check('mountain')
      expect {password_checker.check('cow') }.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end