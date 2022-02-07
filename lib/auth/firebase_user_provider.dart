import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class RentAndDriveAdminFirebaseUser {
  RentAndDriveAdminFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

RentAndDriveAdminFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<RentAndDriveAdminFirebaseUser> rentAndDriveAdminFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<RentAndDriveAdminFirebaseUser>(
            (user) => currentUser = RentAndDriveAdminFirebaseUser(user));
