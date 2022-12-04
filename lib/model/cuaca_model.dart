import 'dart:ffi';

class Cuaca {
  final String name;
  final String description;
  final String icon;
  final double temp;
  final double speed;
  final double lat;
  final double lon;

  Cuaca(
      {this.name = '',
      this.description = '',
      this.icon = '',
      this.temp = 0,
      this.speed = 0,
      this.lat = 0,
      this.lon = 0});

  factory Cuaca.fromJson(Map<String, dynamic> json) {
    return Cuaca(
        name: json['name'] ?? '',
        description: json['weather'][0]['description'] ?? '',
        icon: json['weather'][0]['icon'] ?? '',
        temp: json['main']['temp'] ?? 0,
        speed: json['wind']['speed'] ?? 0,
        lat: json['coord']['lat'] ?? 0,
        lon: json['coord']['lon'] ?? 0);
  }
}

/* 
                          

{
  "weather": [
    {
      "description": "moderate rain",
      "icon": "10d"
    },
  ],
  "main": {
    "temp": 298.48,
  },
  "name": "Zocca",
  "wind": {
    "speed": 0.62,
    },
  "coord": {
    "lon": 10.99,
    "lat": 44.34
  },
}                        

                        
*/