import 'package:flutter/material.dart';
import 'package:flutter_arch/application/auth/sing_in_form/sing_in_form_bloc.dart';
import 'package:flutter_arch/injection.dart';
import 'package:flutter_arch/presentation/sign_in/widgets/sign_in_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
      ),
      body: BlocProvider(
        create: (context) => getIt<SingInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
