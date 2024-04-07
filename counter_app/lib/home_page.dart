import 'package:bloc_state_management/bloc/counter_bloc.dart';
import 'package:bloc_state_management/cubit/counter_cubit.dart';
import 'package:bloc_state_management/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // BlocBuilder<CounterCubit,int>(
            //   bloc: counterCubit, // no need to define if defined in main.dart file
            //   builder: (context,value) {
            //     return Text(
            //       '$value',
            //       style: Theme.of(context).textTheme.headlineMedium,
            //     );
            //   }
            // ),
            BlocBuilder<CounterBloc,int>(
              // bloc: counterCubit,// no need to define if defined in main.dart file
              builder: (context,value) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => INCDECPage(),));
      },child: const Icon(Icons.navigate_next),), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}