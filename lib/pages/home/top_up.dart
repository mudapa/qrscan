import 'package:flutter/material.dart';
import 'package:qrscan/widgets/qr_topup.dart';
import 'package:qrscan/widgets/theme.dart';
import 'package:qrscan/widgets/topup/card_topup.dart';

class TopUp extends StatelessWidget {
  const TopUp({Key? key}) : super(key: key);

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
            const Text('Isi Saldo Berapa ?'),
            CardTopup(
              text: '5.000',
              onTap: () {
                Navigator.pushNamed(context, '/qr_topup');
              },
            ),
            CardTopup(
              text: '10.000',
              onTap: () {
                Navigator.pushNamed(context, '/qr_topup');
              },
            ),
            CardTopup(
              text: '15.000',
              onTap: () {
                Navigator.pushNamed(context, '/qr_topup');
              },
            ),
            CardTopup(
              text: '20.000',
              onTap: () {
                Navigator.pushNamed(context, '/qr_topup');
              },
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
