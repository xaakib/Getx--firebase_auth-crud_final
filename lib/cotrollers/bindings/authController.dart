import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<FirebaseUser> _firebaseUser = Rx<FirebaseUser>();
  String get user => _firebaseUser.value?.email;
  @override
  // ignore: override_on_non_overriding_member
  void onInt() {
    _firebaseUser.bindStream(_auth.onAuthStateChanged);
  }

  void createUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("Error creating account", e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar("Error Loggin", e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void singOut() {
    try {
      _auth.signOut();
    } catch (e) {
      Get.snackbar("Error singout", e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
