defmodule TaskList do
  # returns an empty Map
  def new(), do: MultiStorage.new()

  def add_task(task_list, date, body) do
    MultiStorage.add(task_list, date, body)
  end

  def get_tasks(task_list, date) do
    MultiStorage.get(task_list, date)
  end
end

defmodule MultiStorage do
  # returns an empty Map
  def new(), do: %{}

  # Updates the task_lists map based on the Date as a key
  # If there is no task, puts the task into the Map.
  # If there are already tasks, adds the new task to the existing Map.
  def add(storage, key, value) do
    Map.update(
      storage,
      key,
      [value],
      fn values -> [value | values] end
    )
  end

  def get(storage, key) do
    Map.get(storage, key, []) # Empty list fallback([])
  end
end

# Creating a new store example:
# task_list = TaskList.new() |> TaskList.add_task(~D[2019-01-12], "Get Milk")
