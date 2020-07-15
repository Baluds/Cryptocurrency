import 'dart:convert';

import 'package:Bitcoin_tracker/utilities/apikEy.dart';
import 'package:http/http.dart';

class Network {
  Future getValue(String curyy, String bit) async {
    Response response = await get(
        'https://rest.coinapi.io/v1/exchangerate/$bit/$curyy?apikey=$apiKey');

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data['rate']
          .toStringAsFixed(0); //converts double to string with fixed decimal
    } else {
      return '?';
    }
  }
}
