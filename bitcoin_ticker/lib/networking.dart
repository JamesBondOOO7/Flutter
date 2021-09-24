import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final Uri uri;

  NetworkHelper(this.uri);

  Future getData() async {
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;
      print("Check 1 pass...");
      return jsonDecode(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
