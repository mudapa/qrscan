import 'package:flutter/material.dart';
import 'package:qrscan/widgets/theme.dart';
import 'package:qrscan/widgets/wahana/card_wahana.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class Wahana extends StatefulWidget {
  const Wahana({Key? key}) : super(key: key);

  @override
  State<Wahana> createState() => _WahanaState();
}

class _WahanaState extends State<Wahana> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        toolbarHeight: 87,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Wahana',
          style: secondTextStyle.copyWith(
            fontSize: 24,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        // automaticallyImplyLeading: false,
      );
    }

    Widget customBottomNav() {
      return SizedBox(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      var res = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const SimpleBarcodeScannerPage(),
                        ),
                      );
                      setState(
                        () {
                          if (res is String) {
                            result = res;
                          }
                        },
                      );
                    },
                    child: const Text('Scan QR'),
                  ),
                  Text('Barcode Result: $result'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: const [
            CardWahana(name: 'Carousel'),
            CardWahana(name: 'Carousel'),
            CardWahana(name: 'Carousel'),
            CardWahana(name: 'Carousel'),
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
      bottomNavigationBar: customBottomNav(),
    );
  }
}
