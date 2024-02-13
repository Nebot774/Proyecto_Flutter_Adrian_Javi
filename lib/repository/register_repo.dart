import 'package:firebase_auth/firebase_auth.dart';

class RegisterRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential?> registerAnonymously() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      return userCredential;
    } catch (e) {
      print('Error registering user: ${e.toString()}');
      return null;
    }
  }

  Future<void> sendVerificationCode(String email, String url) async {
    try {
      ActionCodeSettings actionCodeSettings = ActionCodeSettings(
        url: url,
        handleCodeInApp: true,
        iOSBundleId: 'com.example.ios',
        androidPackageName: 'com.example.android',
        androidInstallApp: true,
        androidMinimumVersion: '12',
      );

      await _auth.sendSignInLinkToEmail(
        email: email,
        actionCodeSettings: actionCodeSettings,
      );
    } catch (e) {
      print('Error sending verification code: ${e.toString()}');
    }
  }
}