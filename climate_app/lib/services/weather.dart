import 'package:climate_app/services/location.dart';
import 'package:climate_app/services/networking.dart';

const apiKey = "cae73********************91";

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    Location loc = new Location();
    await loc.getCurrentLocation();

    var uri = Uri.https('api.openweathermap.org', '/data/2.5/weather',
        {'appid': apiKey, 'q': cityName, 'units': 'metric'});

    NetworkHelper networkHelper = NetworkHelper(uri);

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location loc = new Location();
    await loc.getCurrentLocation();

    var uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'appid': apiKey,
      'lat': loc.latitude.toString(),
      'lon': loc.longitude.toString(),
      'units': 'metric'
    });

    NetworkHelper networkHelper = NetworkHelper(uri);

    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
