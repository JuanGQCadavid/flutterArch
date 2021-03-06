// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CancelledByUser<T> cancelledByUser<T>() {
    return CancelledByUser<T>();
  }

  ServerError<T> serverError<T>() {
    return ServerError<T>();
  }

  EmailAlreadyInUse<T> emailAlreadyInUse<T>() {
    return EmailAlreadyInUse<T>();
  }

  InvalidEmailAndUPasswordCombination<T>
      invalidEmailAndUPasswordCombination<T>() {
    return InvalidEmailAndUPasswordCombination<T>();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndUPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndUPasswordCombination<T> value)
        invalidEmailAndUPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndUPasswordCombination<T> value)?
        invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<T, $Res> {
  factory $AuthFailureCopyWith(
          AuthFailure<T> value, $Res Function(AuthFailure<T>) then) =
      _$AuthFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<T, $Res>
    implements $AuthFailureCopyWith<T, $Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthFailure<T>) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<T, $Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser<T> value, $Res Function(CancelledByUser<T>) then) =
      _$CancelledByUserCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements $CancelledByUserCopyWith<T, $Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser<T> _value, $Res Function(CancelledByUser<T>) _then)
      : super(_value, (v) => _then(v as CancelledByUser<T>));

  @override
  CancelledByUser<T> get _value => super._value as CancelledByUser<T>;
}

/// @nodoc

class _$CancelledByUser<T> implements CancelledByUser<T> {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure<$T>.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndUPasswordCombination,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndUPasswordCombination<T> value)
        invalidEmailAndUPasswordCombination,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndUPasswordCombination<T> value)?
        invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser<T> implements AuthFailure<T> {
  const factory CancelledByUser() = _$CancelledByUser<T>;
}

/// @nodoc
abstract class $ServerErrorCopyWith<T, $Res> {
  factory $ServerErrorCopyWith(
          ServerError<T> value, $Res Function(ServerError<T>) then) =
      _$ServerErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements $ServerErrorCopyWith<T, $Res> {
  _$ServerErrorCopyWithImpl(
      ServerError<T> _value, $Res Function(ServerError<T>) _then)
      : super(_value, (v) => _then(v as ServerError<T>));

  @override
  ServerError<T> get _value => super._value as ServerError<T>;
}

/// @nodoc

class _$ServerError<T> implements ServerError<T> {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure<$T>.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndUPasswordCombination,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndUPasswordCombination<T> value)
        invalidEmailAndUPasswordCombination,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndUPasswordCombination<T> value)?
        invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements AuthFailure<T> {
  const factory ServerError() = _$ServerError<T>;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<T, $Res> {
  factory $EmailAlreadyInUseCopyWith(EmailAlreadyInUse<T> value,
          $Res Function(EmailAlreadyInUse<T>) then) =
      _$EmailAlreadyInUseCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements $EmailAlreadyInUseCopyWith<T, $Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse<T> _value, $Res Function(EmailAlreadyInUse<T>) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse<T>));

  @override
  EmailAlreadyInUse<T> get _value => super._value as EmailAlreadyInUse<T>;
}

/// @nodoc

class _$EmailAlreadyInUse<T> implements EmailAlreadyInUse<T> {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure<$T>.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndUPasswordCombination,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndUPasswordCombination<T> value)
        invalidEmailAndUPasswordCombination,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndUPasswordCombination<T> value)?
        invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse<T> implements AuthFailure<T> {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse<T>;
}

/// @nodoc
abstract class $InvalidEmailAndUPasswordCombinationCopyWith<T, $Res> {
  factory $InvalidEmailAndUPasswordCombinationCopyWith(
          InvalidEmailAndUPasswordCombination<T> value,
          $Res Function(InvalidEmailAndUPasswordCombination<T>) then) =
      _$InvalidEmailAndUPasswordCombinationCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$InvalidEmailAndUPasswordCombinationCopyWithImpl<T, $Res>
    extends _$AuthFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailAndUPasswordCombinationCopyWith<T, $Res> {
  _$InvalidEmailAndUPasswordCombinationCopyWithImpl(
      InvalidEmailAndUPasswordCombination<T> _value,
      $Res Function(InvalidEmailAndUPasswordCombination<T>) _then)
      : super(
            _value, (v) => _then(v as InvalidEmailAndUPasswordCombination<T>));

  @override
  InvalidEmailAndUPasswordCombination<T> get _value =>
      super._value as InvalidEmailAndUPasswordCombination<T>;
}

/// @nodoc

class _$InvalidEmailAndUPasswordCombination<T>
    implements InvalidEmailAndUPasswordCombination<T> {
  const _$InvalidEmailAndUPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure<$T>.invalidEmailAndUPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndUPasswordCombination<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cancelledByUser,
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailAndUPasswordCombination,
  }) {
    return invalidEmailAndUPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cancelledByUser,
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndUPasswordCombination != null) {
      return invalidEmailAndUPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CancelledByUser<T> value) cancelledByUser,
    required TResult Function(ServerError<T> value) serverError,
    required TResult Function(EmailAlreadyInUse<T> value) emailAlreadyInUse,
    required TResult Function(InvalidEmailAndUPasswordCombination<T> value)
        invalidEmailAndUPasswordCombination,
  }) {
    return invalidEmailAndUPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CancelledByUser<T> value)? cancelledByUser,
    TResult Function(ServerError<T> value)? serverError,
    TResult Function(EmailAlreadyInUse<T> value)? emailAlreadyInUse,
    TResult Function(InvalidEmailAndUPasswordCombination<T> value)?
        invalidEmailAndUPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndUPasswordCombination != null) {
      return invalidEmailAndUPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndUPasswordCombination<T>
    implements AuthFailure<T> {
  const factory InvalidEmailAndUPasswordCombination() =
      _$InvalidEmailAndUPasswordCombination<T>;
}
