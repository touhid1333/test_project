class ValidationServices {
  static bool isValidPassword(String password) {
    RegExp regExp = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.{8,})',
    );
    return regExp.hasMatch(password);
  }

  static bool isValidEmail(String email) {
    RegExp regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regExp.hasMatch(email);
  }
}
