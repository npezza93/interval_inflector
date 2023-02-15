# frozen_string_literal: true

require "test_helper"

class TestIntervalInflector < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::IntervalInflector::VERSION
  end

  def test_single_minute_in_seconds
    assert_equal "every 60 seconds", 1.minute.to_interval(in: :seconds)
  end

  def test_single_year_in_months
    assert_equal "every 12 months", 1.year.to_interval(in: :months)
  end

  def test_multiple_months
    assert_equal "every 6 months", 6.months.to_interval
  end

  def test_single_minute
    assert_equal "every minute", 1.minute.to_interval
  end

  def test_single_month
    assert_equal "monthly", 1.month.to_interval
  end

  def test_single_year
    assert_equal "yearly", 1.year.to_interval
  end

  def test_single_week
    assert_equal "weekly", 1.week.to_interval
  end

  def test_single_day
    assert_equal "daily", 1.day.to_interval
  end

  def test_single_hour
    assert_equal "hourly", 1.hour.to_interval
  end

  def test_single_second
    assert_equal "every second", 1.second.to_interval
  end
end
