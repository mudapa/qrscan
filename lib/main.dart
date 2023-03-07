import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrscan/pages/home/main_page.dart';
import 'package:qrscan/pages/home/outlet.dart';
import 'package:qrscan/pages/home/top_up.dart';
import 'package:qrscan/pages/home/wahana.dart';
import 'package:qrscan/pages/sign_in.dart';
import 'package:qrscan/providers/auth_provider.dart';
import 'package:qrscan/widgets/qr_topup.dart';

void main() => runApp(const QrScan());

class QrScan extends StatefulWidget {
  const QrScan({super.key});

  @override
  State<QrScan> createState() => _QrScanState();
}

class _QrScanState extends State<QrScan> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SignIn(),
          '/home': (context) => const MainPage(),
          '/top-up': (context) => const TopUp(),
          '/outlet': (context) => const Outlet(),
          '/wahana': (context) => const Wahana(),
          '/qr_topup': (context) => const QrTopup(),
        },
      ),
    );
  }
}
