require_relative "view"
require_relative "task"

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def create
    input = @view.ask_title
    task = Task.new(input)
    @repository.add(task)
  end

  def list_tasks
    tasks = @repository.all
    @view.display_tasks(tasks)
  end

  def task_complete
    index = @view.ask_index
    task = @repository.find(index)
    task.done
  end

  def delete
    index = @view.ask_index
    @repository.destroy(index)
  end
end
