import 'package:flutter/material.dart';

//judul apk di login page
TextStyle judulLoginPage() {
  return TextStyle(
    color: Color(0XFFF44336),
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
}

//decoration Text field di login page
InputDecoration decorationLogin(String hint, String label, Icon icon) {
  return InputDecoration(
    suffixIcon: icon,
    hintText: hint,
    labelText: label,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
