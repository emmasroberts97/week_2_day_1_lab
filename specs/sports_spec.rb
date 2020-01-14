require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports.rb')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestSports < MiniTest::Test
  def setup
    @new_team = Sports.new("Hufflepuff Harriers", ["Emma", "Elizabeth", "Katherine", "Hannah", "Robyn"], "Claire")
  end

  #GETTERS

  def test_team_name
    assert_equal("Hufflepuff Harriers", @new_team.name)
  end

  def test_team_roster
    assert_equal(["Emma", "Elizabeth", "Katherine", "Hannah", "Robyn"], @new_team.roster)
  end

  def test_team_coach
    assert_equal("Claire", @new_team.coach)
  end

  #SETTERS
  def test_coach_name
    # @new_team.set_coach_name("Ashley")
    @new_team.coach = "Ashley"
    assert_equal("Ashley", @new_team.coach)
  end

  def test_player_in_array
    value = @new_team.check_player("Emma")
    assert_equal(true, value)
  end

  def test_add_points
    value = @new_team.add_points("win")
    assert_equal(5, @new_team.points)
  end

  def test_add_player
    value = @new_team.add_player("Sam")
    assert_equal(["Emma", "Elizabeth", "Katherine", "Hannah", "Robyn", "Sam"], @new_team.roster)
  end 
end
