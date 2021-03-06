import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo/domain/core/errors.dart';
import 'package:todo/domain/core/failures.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;
  const ValueObject();

  bool isValid() => value.isRight();

  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
