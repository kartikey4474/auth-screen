import 'package:flutter/material.dart';

class InputTextFieldWidget extends StatelessWidget {
  final String hintText;
  final FormFieldValidator<String>? validator;

  InputTextFieldWidget(
    this.hintText, {
    required this.validator,
    required TextEditingController controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: validator, // Assign the validator to the TextFormField
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 24.0,
          ),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.white,
          filled: true,
          hintStyle: TextStyle(
            color: Color(0xFF777777),
            fontSize: 16,
            fontFamily: 'Satoshi Variable',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
