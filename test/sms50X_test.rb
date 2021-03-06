require 'test_helper'

class Sms50XTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Sms50X::VERSION
  end

  def test_it_returns_the_account_balance
    VCR.use_cassette('balance') do
      client = Sms50X::Client.new('API_KEY', 'CRI')
      balance = client.balance
      assert_equal 20, balance
    end
  end

end
