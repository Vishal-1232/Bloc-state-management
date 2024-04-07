# login_form_validator_app

What is a sealed class in Dart ?

In Dart, a sealed class is a special kind of abstract class that restricts its subclasses to a predefined set.

This means that all possible subclasses of a sealed class must be defined within the same file as the sealed class itself, and no new subclasses can be added outside of that file. This restriction can help make code more maintainable and predictable.

To declare a sealed class in Dart, you use the sealed keyword followed by the class keyword. You then list the allowed subclasses using the extends keyword.
 
---

Bloc Builder ----> used for state changes so that UI reruns and refreshes current screen. It handles the ui in response to state change.

Bloc Listner ----> based on bloc event it has, it will listen to state used when no need for Screen refresh example navigating to other screen, displaying toast/snackbar . It is used for functionality that need to occur once per state change such as navigation, showing a snackbar, showing a dialog etc.

>Bloc Consumer  ---> Bloc Builder + Bloc Listner


> use context.read() when you want to access the state without causing the widget to rebuild, and use context.watch() when you want the widget to listen to state changes and rebuild accordingly.

---