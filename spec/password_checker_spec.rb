require 'password_checker'

describe PasswordChecker do
  it "returns an error message if password less than 8 characters" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("abc") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "returns true when password >= 8" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("jnonoifsdio")).to eq true
  end
end