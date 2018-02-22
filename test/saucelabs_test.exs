defmodule SauceLabsTest do
    use ExUnit.Case
    use Hound.Helpers

    setup do
      Hound.start_session([
        {:browser, "chrome"}
        ])
      :ok
    end
  
    test "test the guinea pig" do
  
      # Navigate to url
      navigate_to("http://saucelabs.com/test/guinea-pig")
  
      # Assert that the correct title is returned
      assert page_title() == "I am a page title - Sauce Labs"
  
    end
  
  end
  