import 'package:todo/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const String explanation =
        'Encountereda ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation (valueFailure: $valueFailure)');
  }
}
