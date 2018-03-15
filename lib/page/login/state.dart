import 'package:sealed_unions/sealed_unions.dart';

class LoginState extends Union5Impl<
    LoginStateSignUp,
    LoginStateSignIn,
    LoginStateAuthenticating,
    LoginStateSignUpError,
    LoginStateSignInError> {

  static final Quintet<
      LoginStateSignUp,
      LoginStateSignIn,
      LoginStateAuthenticating,
      LoginStateSignUpError,
      LoginStateSignInError> factory = const Quintet<
      LoginStateSignUp,
      LoginStateSignIn,
      LoginStateAuthenticating,
      LoginStateSignUpError,
      LoginStateSignInError>();

  LoginState._(Union5<
      LoginStateSignUp,
      LoginStateSignIn,
      LoginStateAuthenticating,
      LoginStateSignUpError,
      LoginStateSignInError> union) : super(union);

  factory LoginState.signUp() => new LoginState._(factory.first(new LoginStateSignUp()));
  factory LoginState.signIn() => new LoginState._(factory.second(new LoginStateSignIn()));
  factory LoginState.authenticating() => new LoginState._(factory.third(new LoginStateAuthenticating()));
  factory LoginState.signUpError(String error) => new LoginState._(factory.fourth(new LoginStateSignUpError(error)));
  factory LoginState.signInError(String error) => new LoginState._(factory.fifth(new LoginStateSignInError(error)));
}

class LoginStateSignUp {}
class LoginStateSignIn {}
class LoginStateAuthenticating {}
class LoginStateSignUpError {
  final String error;

  LoginStateSignUpError(this.error);
}
class LoginStateSignInError {
  final String error;

  LoginStateSignInError(this.error);
}