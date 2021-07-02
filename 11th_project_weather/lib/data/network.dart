import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  final String url;
  final String url2;

  Network(this.url, this.url2);

  Future<dynamic> getJasonData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String jsondata = response.body;
      var parsingData = jsonDecode(jsondata);
      return parsingData;
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> getAirData() async {
    http.Response response = await http.get(Uri.parse(url2));
    if (response.statusCode == 200) {
      String jsondata = response.body;
      var parsingData = jsonDecode(jsondata);
      return parsingData;
    } else {
      print(response.statusCode);
    }
  }
}
