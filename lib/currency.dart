import 'network.dart';

class Currency {
  getCurrencyValue() async {
    var url =
        'https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=6956291F-A0B6-4F38-861B-9816D1F5BCCE';
    NetworkHelper networkForCurrency = NetworkHelper(url);
    var currencyRate = await networkForCurrency.getCurrencydata();
    return currencyRate;
  }
}
