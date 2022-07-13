import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CollegesListScreen extends StatefulWidget {
  const CollegesListScreen({Key? key}) : super(key: key);

  @override
  State<CollegesListScreen> createState() => _CollegesListScreenState();
}

class _CollegesListScreenState extends State<CollegesListScreen> {
  String country = "";
  List colleges = [];

  Widget listCardTemplate(college) {
    final Uri url = Uri.parse(college['domains'][0]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
          child: Text(
            college['name'],
            style: const TextStyle(
                // fontFamily: 'Proxima',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 1.0),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(college['alpha_two_code']),
            InkWell(
              onTap: () => launchUrl(url),
              child: TextButton.icon(
                onPressed: () => launchUrl(url),
                icon: const Icon(Icons.arrow_forward),
                label: const Text(''),
              ),
            ),
            // Text(college['web_pages'][0]),
          ],
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
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Text('Found ${colleges.length} colleges in $country'),
            const SizedBox(height: 50),
            Container(
              // color: Colors.white,
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
