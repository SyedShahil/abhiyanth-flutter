import 'package:abhiyanth/models/login_model.dart';
class LoginViewModel{
  bool _isLoading = false;
  String _errorMessage=" ";
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  final LoginModel _loginModel = LoginModel(email: "", password: "");

  String get email => _loginModel.email;
  String get password => _loginModel.password;

  void setEmail(String value) {
    _loginModel.email = value;
  }

  void setPassword(String value) {
    _loginModel.password = value;
  }



  String? validateEmail(String? email){
    if(email==null || email.isEmpty){
      return "Please enter your email";
    }
    if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)) {
      return "Enter a valid email address";
    }
    return null;
  }



  String? validatePassword(String? password){
    if(password==null || password.isEmpty){
      return "Please enter your password";
    }
    if (password.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }


  Future<Map<String, dynamic>> submit() async {
    _isLoading = true;

    await Future.delayed(const Duration(seconds: 2));
    if (_loginModel.email == "test@example.com" &&
        _loginModel.password == "password123") {
      _isLoading = false;
      return {"success": true, "message": "Login Successful"};
    } else {
      _isLoading = false;
      _errorMessage = "Invalid email or password";
      return {"success": false, "message": _errorMessage};
    }
  }

}