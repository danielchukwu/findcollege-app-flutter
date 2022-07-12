import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final inputController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    inputController.addListener(() {
      print(inputController.text);
    });
  }

  // submit search
  void handleSubmittion() {
    inputController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf6f7f7),
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          // decoration: const BoxDecoration(
          //     image: DecorationImage(
          //   image: AssetImage('assets/images/9-15.jpg'),
          //   fit: BoxFit.cover,
          // )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50, 200, 50, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Find a Country'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: 'DMSerif',
                    )),
                const SizedBox(height: 20.0),

                // Add Input Field Here
                TextField(
                  // onChanged: (value) => print(value),
                  onSubmitted: (value) => handleSubmittion(),
                  controller: inputController,
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Proxima'),
                  decoration: const InputDecoration(
                      filled: false,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: 'Enter a country name',
                      hintStyle: TextStyle(color: Colors.white)

                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(50)),
                      ),
                ),

                const SizedBox(height: 100.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Find the college of your dreams today!\nEnter any country of your choice above to see the countries in that location',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1.0,
                        height: 1.5,
                        fontFamily: 'Proxima',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
