import 'package:dartz/dartz.dart';
import 'package:flutter_arch/domain/core/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'failures.dart';

@immutable
abstract class ValueObject<T> {

  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  T getOrElseCrash () {
    return value.fold(
            (l) => throw UnexpectedValueError(l),
            (r) => r
    );
  }

  @override
  String toString() {
    return 'ValueObject{value: $value}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ValueObject<T> &&
              value == other.value;

  @override
  int get hashCode => value.hashCode;
}