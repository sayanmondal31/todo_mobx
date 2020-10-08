import 'package:mobx/mobx.dart';
import 'package:todo_mobx/todo.dart';

part 'todolist.g.dart';

enum VisibilityFilter {
  all,
  pending,
  completed,
}

class TodoList = _TodoList with _$TodoList;

abstract class _TodoList with Store {
  // all observable
  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();

  @observable
  VisibilityFilter filter = VisibilityFilter.all; //initial stage

  @observable
  String currentDescription = '';

  // all computed

  @computed //pending todos
  ObservableList<Todo> get pendingTodoList =>
      todos.where((todo) => todo.done == false);

  @computed //completed todos
  ObservableList<Todo> get completedTodoList =>
      todos.where((todo) => todo.done == true);

  @computed //checking is there any pending todos
  bool get hasPendingTodo => pendingTodoList.isNotEmpty;

  @computed //checking is there any completed todo
  bool get hasCompletedTodo => completedTodoList.isNotEmpty;

  @computed //showing description based on todo activity
  String get itemDescription {
    if (todos.isEmpty) {
      return 'There have no todos why not you add some?';
    }

    final suffix = pendingTodoList.length == 1 ? 'todo' : 'todos';

    return '${pendingTodoList.length} pending $suffix,${completedTodoList.length} completd';
  }

  @computed //show todos(pending,completed,all) based on user queries
  ObservableList<Todo> get visibleTodos {
    switch (filter) {
      case VisibilityFilter.pending:
        return pendingTodoList;
      case VisibilityFilter.completed:
        return completedTodoList;
      default:
        return todos;
    }
  }

  @computed // all todos and completed todos will be remove
  bool get canRemoveAllTodos => hasCompletedTodo && filter != VisibilityFilter.pending;

  @computed
  bool get canMarkAllCompleted => hasPendingTodo && filter != VisibilityFilter.completed;

  // all actions

  @action
  void addTodo(String description){
    final todo = Todo(description);
    todos.add(todo ); 
    currentDescription = '';
  }


  @action
  void removeTodo(Todo todo){
    todos.removeWhere((x) => x == todo);
  }


  @action
  void changeFilter(VisibilityFilter filter) => this.filter = filter;


  @action
  void changeDescription(String description) => currentDescription = description;
  // 

 
  void removeCompleted(){
    todos.removeWhere((todo) => todo.done);
  }


  void markAllAsCompleted(){
    for(final todo in todos){
      todo.done = true;
    }
  }

}
