import 'package:flutter/material.dart';
import 'package:qrscan/widgets/theme.dart';

class QrTopup extends StatelessWidget {
  const QrTopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 87,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Top Up',
          style: secondTextStyle.copyWith(
            fontSize: 24,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        // automaticallyImplyLeading: false,
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'QR Code',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
