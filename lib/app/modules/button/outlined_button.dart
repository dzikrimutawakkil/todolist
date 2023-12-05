import 'package:flutter/material.dart';
import 'package:to_do_list/app/modules/button/button_interface.dart';

class MyOutlinedButton extends StatelessWidget implements Buttoninterface {
  final Color borderColor;
  final Color textColor;
  final String label;
  final void Function() onPressedCallBack;

  MyOutlinedButton({required this.label, required this.onPressedCallBack, required this.textColor, required this.borderColor});

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
        shadowColor: Colors.transparent,
        minimumSize: Size.fromHeight(48),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: borderColor, width: 1),
        ),
      ),
      onPressed: onPressed,
      child: Text(label,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16, color: textColor,
        ),
      ),
    );
  }
}
