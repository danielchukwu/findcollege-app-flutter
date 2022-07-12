import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();

    @override
    void dispose() {
      super.dispose();
    }

    Future.delayed(Duration(seconds: 5), () {
      print('redirect user to home');
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF00acc0),
      backgroundColor: Colors.black87,
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
