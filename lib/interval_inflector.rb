# frozen_string_literal: true

require "active_support/all"

class IntervalInflector
  def initialize(duration:, requested_part:)
    @duration = duration
    @requested_part = requested_part
  end

  def to_interval
    if single_occurrence?
      special_occurences[requested_part.to_sym] || "#{requested_part}ly"
    else
      "every #{occurrences} #{requested_part.pluralize}"
    end
  end

  private

  attr_reader :duration

  def special_occurences
    { day: "daily", minute: "every minute", second: "every second" }
  end

  def single_occurrence?
    occurrences == 1
  end

  def occurrences
    @occurrences ||=
      duration.public_send("in_#{requested_part.pluralize}").to_i
  end

  def requested_part
    (@requested_part || duration.parts.keys.max_by do |duration|
      ActiveSupport::Duration::PARTS_IN_SECONDS[duration]
    end).to_s.singularize
  end
end

class ActiveSupport::Duration
  def to_interval(in: nil)
    IntervalInflector.new(
      duration: self,
      requested_part: binding.local_variable_get(:in)
    ).to_interval
  end
end
