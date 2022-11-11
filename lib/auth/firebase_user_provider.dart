import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ReviewerAppFirebaseUser {
  ReviewerAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ReviewerAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ReviewerAppFirebaseUser> reviewerAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ReviewerAppFirebaseUser>(
      (user) {
        currentUser = ReviewerAppFirebaseUser(user);
        return currentUser!;
      },
    );
