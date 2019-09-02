require('minitest/autorun')
require('minitest/rg')
require_relative('../sport_team.rb')

class TestSportFile < MiniTest::Test

  def setup
    @team_players = ["Gary Sanchez", "Gleyber Torres", "Brett Gardner", "Gio Urshella", "Luke Voit", "G.Torres", "Aaron Judge"]
    @sport_team = SportTeam.new("New York Yankees", @team_players, "Marcus Thames")
  end

  def test_team_name
    assert_equal("New York Yankees", @sport_team.team_name)
  end

  def test_team_players
    assert_equal(@team_players, @sport_team.players)
  end

  def test_couch_name
    assert_equal("Marcus Thames", @sport_team.couch_name)
  end

  def test_set_new_couch_name
    @sport_team.couch_name = "Omar Vizquel"
    assert_equal("Omar Vizquel", @sport_team.couch_name)
  end

  def test_new_player
    @sport_team.new_player("Mario Lopez")
    assert_equal(8, @sport_team.players.count)

  end

  def test_find_player
    assert_equal(true, @sport_team.find_player("Gleyber Torres"))
    assert_equal(false, @sport_team.find_player("Sandy Papo"))
  end

  def test_update_points
    @sport_team.update_points(true)
    assert_equal(1, @sport_team.points)

    @sport_team.update_points(false)
    assert_equal(1, @sport_team.points)
  end

end
