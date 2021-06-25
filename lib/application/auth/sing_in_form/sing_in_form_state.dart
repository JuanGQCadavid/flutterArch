part of 'sing_in_form_bloc.dart';

@freezed
abstract class SingInFormState with _$SingInFormState {
  const factory SingInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccess
  }) = _SingInFormState;

  factory SingInFormState.initial() => SingInFormState(
    emailAddress: EmailAddress(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccess: none()
  );
}