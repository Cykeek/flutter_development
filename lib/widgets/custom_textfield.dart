import 'package:demo/utils/apps_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final int maxLength;
  final int? maxLines;
  final String hintText;
  final TextEditingController controller;
  const CustomTextField({
    super.key,
  ///
    required this.maxLength,
    this.maxLines,
    required this.hintText,
    required this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final _focusnode = FocusNode();

  @override
  void dispose() {
    _focusnode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusnode,
      onEditingComplete:() => FocusScope.of(context).nextFocus(),
      controller: widget.controller,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      style: AppTheme.inputstyle,
      decoration: InputDecoration(
        hintStyle: AppTheme.hintText,
        hintText: widget.hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.texthovered,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.placeholder,
          ),
        )
      )
    );
  }
}