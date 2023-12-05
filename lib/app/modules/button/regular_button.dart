import 'package:flutter/material.dart';
import 'package:to_do_list/app/modules/button/button_interface.dart';

class RegularButton extends StatelessWidget implements Buttoninterface {
  final Color backgroundColor;
  final Color textColor;
  final String label;
  final void Function() onPressedCallBack;

  RegularButton({required this.label, required this.onPressedCallBack, required this.backgroundColor, required this.textColor});

  @override
  void setText(String text) {
    // This method can be left empty for RegularButton since the label is provided in the constructor.
  }

  @override
  void onPressed() {
    onPressedCallBack();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(48),
        backgroundColor: backgroundColor,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: Text(label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: textColor,
          fontSize: 16,
        ),
      ),
    );
  }
}
