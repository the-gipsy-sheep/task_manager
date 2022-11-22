class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "Welcome to TODO Manager"
    loop do
      puts "Select an option:"
      puts "1- Add task"
      puts "2- List all tasks"
      puts "3- Mark as complete"
      puts "4- Delete task"
      option = gets.chomp.to_i

      case option
      when 1 then @controller.create
      when 2 then @controller.list_tasks
      when 3 then @controller.task_complete
      when 4 then @controller.delete
      else puts "Please select 1, 2, 3 or 4 "
      end
    end
  end
end
