
import 'package:flutter/material.dart';
import 'package:flutter_arch/application/auth/sing_in_form/sing_in_form_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SingInFormBloc, SingInFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          child: ListView(
            children: [
              const Text(
                  "🥱",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 130
                ),
              ),
              const SizedBox(height: 8,),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email dude"
                ),
                autocorrect: false,
              ),
              const SizedBox(height: 8,),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "Password",
                ),
                autocorrect: false,
                obscureText: true,
              )
            ],
          ),
        );
      },

    );
  }
}
