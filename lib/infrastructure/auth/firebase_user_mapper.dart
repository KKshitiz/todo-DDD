import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo/domain/auth/user_model.dart' as user;
import 'package:todo/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on User {
  user.User toDomain() {
    return user.User(id: UniqueId.fromUniqueString(uid));
  }
}
