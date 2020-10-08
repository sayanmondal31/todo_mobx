// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todolist.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoList on _TodoList, Store {
  Computed<ObservableList<Todo>> _$pendingTodoListComputed;

  @override
  ObservableList<Todo> get pendingTodoList => (_$pendingTodoListComputed ??=
          Computed<ObservableList<Todo>>(() => super.pendingTodoList,
              name: '_TodoList.pendingTodoList'))
      .value;
  Computed<ObservableList<Todo>> _$completedTodoListComputed;

  @override
  ObservableList<Todo> get completedTodoList => (_$completedTodoListComputed ??=
          Computed<ObservableList<Todo>>(() => super.completedTodoList,
              name: '_TodoList.completedTodoList'))
      .value;
  Computed<bool> _$hasPendingTodoComputed;

  @override
  bool get hasPendingTodo =>
      (_$hasPendingTodoComputed ??= Computed<bool>(() => super.hasPendingTodo,
              name: '_TodoList.hasPendingTodo'))
          .value;
  Computed<bool> _$hasCompletedTodoComputed;

  @override
  bool get hasCompletedTodo => (_$hasCompletedTodoComputed ??= Computed<bool>(
          () => super.hasCompletedTodo,
          name: '_TodoList.hasCompletedTodo'))
      .value;
  Computed<String> _$itemDescriptionComputed;

  @override
  String get itemDescription => (_$itemDescriptionComputed ??= Computed<String>(
          () => super.itemDescription,
          name: '_TodoList.itemDescription'))
      .value;
  Computed<ObservableList<Todo>> _$visibleTodosComputed;

  @override
  ObservableList<Todo> get visibleTodos => (_$visibleTodosComputed ??=
          Computed<ObservableList<Todo>>(() => super.visibleTodos,
              name: '_TodoList.visibleTodos'))
      .value;
  Computed<bool> _$canRemoveAllTodosComputed;

  @override
  bool get canRemoveAllTodos => (_$canRemoveAllTodosComputed ??= Computed<bool>(
          () => super.canRemoveAllTodos,
          name: '_TodoList.canRemoveAllTodos'))
      .value;
  Computed<bool> _$canMarkAllCompletedComputed;

  @override
  bool get canMarkAllCompleted => (_$canMarkAllCompletedComputed ??=
          Computed<bool>(() => super.canMarkAllCompleted,
              name: '_TodoList.canMarkAllCompleted'))
      .value;

  final _$todosAtom = Atom(name: '_TodoList.todos');

  @override
  ObservableList<Todo> get todos {
    _$todosAtom.reportRead();
    return super.todos;
  }

  @override
  set todos(ObservableList<Todo> value) {
    _$todosAtom.reportWrite(value, super.todos, () {
      super.todos = value;
    });
  }

  final _$filterAtom = Atom(name: '_TodoList.filter');

  @override
  VisibilityFilter get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$currentDescriptionAtom = Atom(name: '_TodoList.currentDescription');

  @override
  String get currentDescription {
    _$currentDescriptionAtom.reportRead();
    return super.currentDescription;
  }

  @override
  set currentDescription(String value) {
    _$currentDescriptionAtom.reportWrite(value, super.currentDescription, () {
      super.currentDescription = value;
    });
  }

  final _$_TodoListActionController = ActionController(name: '_TodoList');

  @override
  void addTodo(String description) {
    final _$actionInfo =
        _$_TodoListActionController.startAction(name: '_TodoList.addTodo');
    try {
      return super.addTodo(description);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTodo(Todo todo) {
    final _$actionInfo =
        _$_TodoListActionController.startAction(name: '_TodoList.removeTodo');
    try {
      return super.removeTodo(todo);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilter(VisibilityFilter filter) {
    final _$actionInfo =
        _$_TodoListActionController.startAction(name: '_TodoList.changeFilter');
    try {
      return super.changeFilter(filter);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDescription(String description) {
    final _$actionInfo = _$_TodoListActionController.startAction(
        name: '_TodoList.changeDescription');
    try {
      return super.changeDescription(description);
    } finally {
      _$_TodoListActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
todos: ${todos},
filter: ${filter},
currentDescription: ${currentDescription},
pendingTodoList: ${pendingTodoList},
completedTodoList: ${completedTodoList},
hasPendingTodo: ${hasPendingTodo},
hasCompletedTodo: ${hasCompletedTodo},
itemDescription: ${itemDescription},
visibleTodos: ${visibleTodos},
canRemoveAllTodos: ${canRemoveAllTodos},
canMarkAllCompleted: ${canMarkAllCompleted}
    ''';
  }
}
