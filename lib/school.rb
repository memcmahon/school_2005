class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_day
    @student_names = []
  end

  def add_student_name(name)
    @student_names << name
    # @student_names.push(name)
  end

  def end_time
    # binding.pry
    # @start_time[0..-4].to_i
    time = @start_time.to_i + @hours_in_school_day
    "#{time}:00"
  end

  def is_full_time?
    @hours_in_school_day > 4
    # if @hours_in_school_day > 4
    #   true
    # else
    #   false
    # end
  end

  def standard_student_names
    capitalized_names = []
    @student_names.each do |name|
      capitalized_names << name.capitalize
    end
    capitalized_names
  end
end
