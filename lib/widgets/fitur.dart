import 'package:flutter/material.dart';
import 'package:qrscan/widgets/theme.dart';

class Fitur extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const Fitur({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: blackColor,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: primaryTextStyle.copyWith(
          fontSize: 16,
          fontWeight: medium,
        ),
      ),
    );
  }
}
