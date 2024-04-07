1. ctrl+shift+p
```dart
// BlocProvider.of<TodoCubit>(context).addTodo(todoTitleController.text.trim());

context.read<TodoCubit>().addTodo(todoTitleController.text.trim());
```