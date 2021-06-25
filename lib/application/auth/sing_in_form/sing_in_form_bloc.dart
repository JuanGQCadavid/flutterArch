import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_arch/domain/auth/auth_failure.dart';
import 'package:flutter_arch/domain/auth/i_auth_facade.dart';
import 'package:flutter_arch/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sing_in_form_event.dart';
part 'sing_in_form_state.dart';

part 'sing_in_form_bloc.freezed.dart';

@injectable
class SingInFormBloc extends Bloc<SingInFormEvent, SingInFormState> {
  final IAuthFacade _authFacade;
  SingInFormBloc(this._authFacade) : super(SingInFormState.initial());

  @override
  Stream<SingInFormState> mapEventToState(
    SingInFormEvent event,
  ) async* {
    yield* event.map(
        emailChanged: (e) async* {
          yield state.copyWith(
              emailAddress: EmailAddress(e.emailStr),
              authFailureOrSuccess: none()
          );
        },
        passwordChanged: (e) async* {
          yield state.copyWith(
            password: Password(e.passwordStr),
            authFailureOrSuccess: none()
          );
        },
        registerWithEmailAndPasswordPressed: (e) async* {
          yield* _performActionOnAuthFacadeWithEmailAndPassword(_authFacade.registerWithEmailAndPassword);
        },
        signInWithEmailAndPasswordPressed: (e) async* {
          yield* _performActionOnAuthFacadeWithEmailAndPassword(_authFacade.signInWithEmailAndPassword);
        },
        signInWithGooglePressed: (e) async* {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccess: none()
          );

          final authFailureOrSuccess = await _authFacade.signInWithGoogle();

          yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccess: some(authFailureOrSuccess)
          );
        }
    );
  }

  Stream<SingInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
        Future<Either<AuthFailure, Unit>> Function ({
          required EmailAddress emailAddress,
          required Password password
        }) forwardedCall
      ) async* {


    Option<Either<AuthFailure, Unit>> authFailureOrSuccess = none();

    final bool isEmailValid = state.emailAddress.isValid();
    final bool isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none()
      );

      authFailureOrSuccess = some(
          await forwardedCall(
            emailAddress: state.emailAddress,
            password: state.password
          )
      );
      
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccess: authFailureOrSuccess
    );

  }
}
