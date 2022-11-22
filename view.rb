class View
  def ask_title
    puts "What task do you want to do?"
    print "> "
    gets.chomp
  end

  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      done = task.done? ? "X" : " "
      puts "[#{done}] - #{index + 1} - #{task.title}"
    end
  end

  def ask_index
    puts "Index?"
    print "> "
    gets.chomp.to_i - 1
  end
end
