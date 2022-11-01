import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

//
// const bitcoinAverageURL =
//     'https://apiv2.bitcoinaverage.com/indices/global/ticker';
class CoinData {
  //3. Create the Asynchronous method getCoinData() that returns a Future (the price data).
  Future getCurrencydata(String selectedCurrency) async {
    var url =
        'https://rest.coinapi.io/v1/exchangerate/BTC/$selectedCurrency?apikey=6956291F-A0B6-4F38-861B-9816D1F5BCCE';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      double lastPrice = decodedData['rate'];
      return lastPrice.toStringAsFixed(0);
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }
}
// }
