import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_form_validator_app/bloc/auth_bloc.dart';
import 'package:login_form_validator_app/login_screen.dart';
import 'package:login_form_validator_app/widgets/gradient_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final authState = context.watch<AuthBloc>().state as AuthSuccess;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Screen"),
        ),
        body: BlocConsumer<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: Column(
                children: [
                  Text((state as AuthSuccess).uid),
                  GradientButton(
                      onPressed: () =>
                          context.read<AuthBloc>().add(AuthLogoutRequested())),
                ],
              ),
            );
          },
          listener: (context, state) {
            if (state is AuthInitial) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                  (route) => false);
            }
          },
        ));
  }
}
