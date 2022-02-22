//@dart=2.9;
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'constants.dart';

class APIservice {
  Future<String> getProductList() async {
    var response = await http.post(
      ngrok + '/buyer_display',
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    if (response.statusCode == 200) {
      var mapResponse = json.decode(response.body);
      print(mapResponse);
      Productlist = mapResponse["data"];
      print(Productlist);
    }
  }
}