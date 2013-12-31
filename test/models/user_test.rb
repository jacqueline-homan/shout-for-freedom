require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "a user" do
    setup { User.new }
    asserts("it's provider is nil") { topic.provider.is_nil? }
  end
  # test "the truth" do
  #   assert true
  # end
end
