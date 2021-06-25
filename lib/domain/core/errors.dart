
import 'package:flutter_arch/domain/core/failures.dart';

class UnexpectedValueError extends Error{
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString('Encounter an Unexpected ValueError at an unrecoverable point. Terminating, failure was -> $valueFailure');
  }
}