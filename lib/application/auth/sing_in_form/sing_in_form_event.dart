part of 'sing_in_form_bloc.dart';

@freezed
abstract class SingInFormEvent with _$SingInFormEvent {
  const factory SingInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SingInFormEvent.passwordChanged(String passwordStr) = PasswordChanged;
  const factory SingInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SingInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SingInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
