import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00acc0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'FindCollege',
              style: TextStyle(
                fontSize: 40,
                letterSpacing: 2,
                color: Colors.white,
                fontFamily: 'DMSerif',
              ),
            ),
            SizedBox(height: 30.0),
            SpinKitFoldingCube(
              color: Colors.white,
              size: 40,
            )
          ],
        ),
      ),
    );
  }
}
