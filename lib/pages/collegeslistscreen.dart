import 'package:flutter/material.dart';

class CollegesListScreen extends StatefulWidget {
  const CollegesListScreen({Key? key}) : super(key: key);

  @override
  State<CollegesListScreen> createState() => _CollegesListScreenState();
}

class _CollegesListScreenState extends State<CollegesListScreen> {
  String country = "";
  List colleges = [];

  Widget listCardTemplate(college) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text(
              college['name'],
              style: const TextStyle(
                  // fontFamily: 'Proxima',
                  // fontWeight: FontWeight.bold,
                  fontSize: 18,
                  letterSpacing: 2.0),
            ),
          ),
        ),
        const Divider(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Uncomment When done styling
    // dynamic data = ModalRoute.of(context)!.settings.arguments;
    // print('raw data: $data');
    // country = data['country'];
    // colleges = data['colleges'];

    country = 'ghana';
    colleges = [
      {
        'domains': ['aaua.edu.ng'],
        'web_pages': ['http//www.aaua.edu.ng/'],
        'state-province': null,
        'name': 'Adekunle Ajasin University',
        'country': 'Nigeria',
        'alpha_two_code': 'NG'
      },
      {
        'domains': ['aauekpoma.edu.ng'],
        'web_pages': ['http://www.aauekpoma.edu.ng/'],
        'state-province': null,
        'name': 'Ambrose Alli University',
        'country': 'Nigeria',
        'alpha_two_code': 'NG'
      },
      {
        'domains': ['abiapoly.edu.ng'],
        'web_pages': ['http://www.abiapoly.edu.ng/'],
        'state-province': null,
        'name': 'Abia State Polytechnic',
        'country': 'Nigeria',
        'alpha_two_code': 'NG'
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colleges List'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            Text('Found ${colleges.length} colleges in $country'),
            const SizedBox(height: 50),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: colleges
                    .map((college) => listCardTemplate(college))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
