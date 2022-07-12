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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 200, 50, 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Text('Find a Country'.toUpperCase()),
                    const SizedBox(height: 20.0),

                    // Add Input Field Here
                    TextField(
                      // onChanged: (value) => print(value),
                      onSubmitted: (value) => handleSubmittion(),
                      controller: inputController,
                      decoration: InputDecoration(
                        hintText: 'Enter a country name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Find the college of your dreams today!\nEnter any country of your choice above to see the countries in that location',
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
