import 'package:flutter/material.dart';
import 'package:qrscan/widgets/fitur.dart';
import 'package:qrscan/widgets/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Username',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          header(),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Fitur(
                text: 'Top up',
                onPressed: () {
                  Navigator.pushNamed(context, '/top-up');
                },
              ),
              Fitur(
                text: 'Outlet',
                onPressed: () {
                  Navigator.pushNamed(context, '/outlet');
                },
              ),
              Fitur(
                text: 'Wahana',
                onPressed: () {
                  Navigator.pushNamed(context, '/wahana');
                },
              ),
            ],
          )
        ],
      );
    }

    return Scaffold(
      body: content(),
    );
  }
}
