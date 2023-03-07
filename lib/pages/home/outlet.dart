import 'package:flutter/material.dart';
import 'package:qrscan/widgets/theme.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

class Outlet extends StatefulWidget {
  const Outlet({Key? key}) : super(key: key);

  @override
  State<Outlet> createState() => _OutletState();
}

class _OutletState extends State<Outlet> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 87,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'Scan QR',
          style: secondTextStyle.copyWith(
            fontSize: 24,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
        // automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                var res = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SimpleBarcodeScannerPage(),
                  ),
                );
                setState(() {
                  if (res is String) {
                    result = res;
                  }
                });
              },
              child: const Text('Scan QR'),
            ),
            Text('Barcode Result: $result'),
          ],
        ),
      ),
    );
  }
}
