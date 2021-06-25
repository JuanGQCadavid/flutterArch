import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_arch/domain/auth/auth_failure.dart';
import 'package:flutter_arch/domain/auth/i_auth_facade.dart';
import 'package:flutter_arch/domain/auth/value_objects.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade{
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  const FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password
  }) async {

    final emailAddressStr = emailAddress.getOrElseCrash();
    final passwordStr = password.getOrElseCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr,
          password: passwordStr
      );
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(AuthFailure.emailAlreadyInUse());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password
  }) async {

    final emailAddressStr = emailAddress.getOrElseCrash();
    final passwordStr = password.getOrElseCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr,
          password: passwordStr
      );
      return right(unit);

    } on FirebaseException catch (e) {
      if (e.code == "user-not-found" || e.code == "wrong-password") {
        return left(AuthFailure.invalidEmailAndUPasswordCombination());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async{
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left (const AuthFailure.cancelledByUser());
      }
      final googleAuthResponse = await googleUser.authentication;
      final googleCredential = GoogleAuthProvider.credential(
          idToken: googleAuthResponse.idToken,
          accessToken: googleAuthResponse.accessToken
      );
      await  _firebaseAuth.signInWithCredential(googleCredential);
      return right(unit);
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
  
}