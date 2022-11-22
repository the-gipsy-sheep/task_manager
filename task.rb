class Task
  attr_reader :title

  def initialize(title)
    @title = title
    @completed = false
  end

  def done
    @completed = true
  end

  def done?
    @completed
  end
end
