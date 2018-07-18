require "minitest/autorun"
require_relative "atbash"

class AtbashTest < Minitest::Test
  def test_default_decrypt
    atbash = Atbash.new

    assert_equal "svool dliow", atbash.encrypt("hello world")
  end

  def test_default_encrypt
    atbash = Atbash.new

    assert_equal "hello world", atbash.encrypt("svool dliow")
  end

  def test_with_example_1
    atbash = Atbash.new("zodvqukgwefbyitmrsplhacxnj")

    assert_equal "dzs", atbash.encrypt("car")
    assert_equal "car", atbash.decrypt("dzs")
  end

  def test_with_example_2
    atbash = Atbash.new("xipmuzfkbrlwotjancqgveshdy")

    assert_equal "skd qj qucbjvq?", atbash.encrypt("why so serious?")
    assert_equal "why so serious?", atbash.decrypt("skd qj qucbjvq?")
  end

  def test_with_challenge
    atbash = Atbash.new("oephjizkxdawubnytvfglqsrcm")

    assert_equal "knlfgnb, sj koqj o yvnewju", atbash.encrypt("houston, we have a problem")
    assert_equal "houston, we have a problem", atbash.decrypt("knlfgnb, sj koqj o yvnewju")
  end
end