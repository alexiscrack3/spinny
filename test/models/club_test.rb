require "test_helper"

class ClubTest < ActiveSupport::TestCase
  test "club should be valid" do
    club = Club.new(name: 'name')
    assert club.valid?
  end

  test 'club should be invalid without name' do
    club = Club.new(name: '')
    refute club.valid?, 'club is valid without a name'
    assert_not_nil club.errors[:name], 'no validation error for name present'
  end
end
