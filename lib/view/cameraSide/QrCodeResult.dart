import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrResult extends StatelessWidget {
  final String? qrValue;
  final Function stop ;
  QrResult({super.key, required this.qrValue , required this.stop});

  final GlobalKey _qrkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
 
      ),
      body: Center(
        child: Column(
          children: [
            RepaintBoundary(
              key: _qrkey,
              child: QrImageView(
                data: qrValue!,
                size: 200,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              qrValue!,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: "your text")).then((_){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Result Copied")));
                  });
                  // copied successfully
                },
                child: Text('Copy To ClipBoard'))
          ],
        ),
      ),
    );
  }
}
