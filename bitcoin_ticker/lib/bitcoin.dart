import 'networking.dart';

const apiKey = "E2B**********************8AB57";

class BitcoinModel {
  Future<dynamic> getRates(String? currency, String? coin) async {
    // for BTC
    var uri = Uri.https('rest.coinapi.io', '/v1/exchangerate/$coin/$currency', {
      'apiKey': apiKey,
    });

    NetworkHelper networkhelper = NetworkHelper(uri);

    var bitcoinData = await networkhelper.getData();

    print("Check 2 pass...");

    return bitcoinData;
  }
}
