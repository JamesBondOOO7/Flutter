import 'package:flutter/material.dart';
import 'coin_dart.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io'
    show
        Platform; // show : include this class only|| hide : exclude this class only
import 'bitcoin.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  BitcoinModel bitcoin = BitcoinModel();
  String? selectedCurrency = 'USD';
  // List<String> rates = ['?', '?', '?'];
  Map<String?, String?> rates = {'BTC': '?', 'ETH': '?', 'LTC': '?'};

  void updateUI() async {
    String? currCoinRate = '?';
    for (String coin in cryptoList) {
      dynamic bitcoinData = await bitcoin.getRates(selectedCurrency, coin);
      setState(() {
        if (bitcoinData == null) {
          currCoinRate = 'Error';
          return;
        }

        currCoinRate = bitcoinData['rate'].toInt().toString();
        rates[coin] = currCoinRate;
      });
    }
  }

  DropdownButton<String> androidDropdown() {
    List<DropdownMenuItem<String>> dropdownItems = [];

    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );

      dropdownItems.add(newItem);
    }

    return DropdownButton<String>(
        value: selectedCurrency,
        items: dropdownItems,
        onChanged: (value) {
          setState(() {
            selectedCurrency = value;
            rates = {'BTC': '?', 'ETH': '?', 'LTC': '?'};
            updateUI();
          });
        });
  }

  CupertinoPicker iosPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        selectedCurrency = currenciesList[selectedIndex];
        updateUI();
      },
      children: pickerItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CoinCard(
              bitcoinRate: rates['BTC'],
              selectedCurrency: selectedCurrency,
              coin: 'BTC'),
          CoinCard(
              bitcoinRate: rates['ETH'],
              selectedCurrency: selectedCurrency,
              coin: 'ETH'),
          CoinCard(
              bitcoinRate: rates['LTC'],
              selectedCurrency: selectedCurrency,
              coin: 'LTC'),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidDropdown(),
          ),
        ],
      ),
    );
  }
}

class CoinCard extends StatelessWidget {
  const CoinCard({
    Key? key,
    required this.bitcoinRate,
    required this.selectedCurrency,
    required this.coin,
  }) : super(key: key);

  final String? bitcoinRate;
  final String? selectedCurrency;
  final String? coin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $coin = $bitcoinRate $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
