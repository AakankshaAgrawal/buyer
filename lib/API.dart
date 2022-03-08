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

  Future<String> BuyerLogin() async {
    Map homeMap = {
      "Phone_no": Phone_no,
      "Password": Password,
    };
    var response = await http.post(
      ngrok + '/loginvalidation',
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode(homeMap),
    );
    if (response.statusCode == 200) {
      var mapResponse = json.decode(response.body);
      print(mapResponse);
      ValidCredential = mapResponse["success"];
      if(ValidCredential == "True") {
        Buyer_id = mapResponse["data"][0];
        Email = mapResponse["data"][2];
        Phone_no = mapResponse["data"][3];
        Password = mapResponse["data"][4];

      }
      print(ValidCredential);
    }
  }

  Future<String> registerBuyer() async {
    Map registerMap = {
      "Email_id": Email,
      "Phone_no": Phone_no,
      "Password": Password,

    };
    print(registerMap);
    var response = await http.post(
      ngrok + '/farmerregister',
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode(registerMap),
    );
    if (response.statusCode == 200) {
      var mapResponse = json.decode(response.body);
      print(mapResponse);
      Buyer_id = mapResponse["data"];
    }

  }

  Future<String> editProfile() async {
    Map registerMap = {
      "Buyer_id": Buyer_id,
      "Email_id": Email,
      "Phone_no": Phone_no,
      //"Password": New_Password,

    };
    print(registerMap);
    var response = await http.post(
      ngrok + '/edit_profile',
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
      body: json.encode(registerMap),

    );

  }


}