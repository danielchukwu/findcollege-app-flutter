import 'dart:convert';
import 'package:http/http.dart' as http;

class CollegesList {
  late String country;
  late List colleges;
  late bool isValid; // is country list valid

  CollegesList({required this.country});

  void getColleges() async {
    // get Colleges logic should be here
    dynamic url =
        Uri.parse('http://universities.hipolabs.com/search?country=$country');
    dynamic response = await http.get(url);
    response = jsonDecode(response.body); // convert json data to dart's map

    // set colleges and isValid
    if (response.length > 0) {
      colleges = response;
      isValid = true;
    } else {
      isValid = false;
    }

    for (var element in response) {
      print(element);
    }
    print('\n');

    // clear input field
  }
}
