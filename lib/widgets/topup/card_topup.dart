import 'package:flutter/material.dart';
import 'package:qrscan/widgets/theme.dart';

class CardTopup extends StatelessWidget {
  final String text;
  final GestureTapCallback? onTap;
  const CardTopup({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: bg7Color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Rp $text',
              style: primaryTextStyle.copyWith(
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
