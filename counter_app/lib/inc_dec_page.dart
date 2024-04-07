import 'package:bloc_state_management/bloc/counter_bloc.dart';
import 'package:bloc_state_management/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class INCDECPage extends StatelessWidget {
  const INCDECPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            backgroundColor: Colors.yellow,
            //onPressed: () => counterCubit.decrement(),
            onPressed: () => counterBloc.add(CounterDecremented()),
            tooltip: 'Decrement',
            child: const Icon(Icons.minimize),
          ),
          FloatingActionButton(
            heroTag: "btn2",
            backgroundColor: Colors.green,
            //onPressed: () => counterCubit.increment(),
            onPressed: () => counterBloc.add(CounterIncremented()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
