import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:localstorage/localstorage.dart';
import 'package:logger/logger.dart';

class AuthController extends ChangeNotifier {
  FToast fToast = FToast();
  final LocalStorage store;
  bool isLoggedIn = false;
  var log = Logger();

  AuthController(this.store);

  int? get userId => getUserId();
  String get role => getRole();

  int? getUserId() {
    // String? token = getToken();
    // Map<String, dynamic> map = decodeToken(token!);
    // var id = map['userId'];
    isLoggedIn = true;
    // return id;
    return 1;
  }

  String getRole() {
    // String? token = getToken();
    // Map<String, dynamic> map = decodeToken(token!);
    // return map['role'];
    return "ADMIN";
  }
  void logOut(context) async {
    isLoggedIn = false;
    notifyListeners();
    await store.clear();
    Navigator.pushReplacementNamed(context, '/');
  }

  void checkLoggedInStatus() {
    // String? token = getToken();
    // if (token == null) {
    //   isLoggedIn = false;
    // } else {
    //   if((JwtDecoder.isExpired(token!))) {
    //     isLoggedIn = false;
    //   }else{
    //     isLoggedIn = true;
    //   }
    // }
    isLoggedIn = false;
    log.i(isLoggedIn);
  }
}