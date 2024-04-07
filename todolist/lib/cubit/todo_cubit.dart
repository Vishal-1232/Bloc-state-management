import 'package:bloc/bloc.dart';
import 'package:todolist/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  addTodo(String title) {
    if (title.isEmpty) {
      addError("Title cannot be empty");
      return;
    }

    final todo = Todo(name: title, createdAt: DateTime.now());
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    print('TodoCubit - $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('TodoCubit - $error');
  }
}
