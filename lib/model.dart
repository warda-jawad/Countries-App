class Country {
  final String name;
  final String capital;
  final String region;
  final String subregion;
  final int population;
  final String flag;

  Country({
    required this.name,
    required this.capital,
    required this.region,
    required this.subregion,
    required this.population,
    required this.flag,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name']['common'],
      capital: json['capital'].toString(),
      region: json['region'] ?? '',
      subregion: json['subregion'] ?? '',
      population: json['population'] ?? 0,
      flag: json['flags']['svg'],
    );
  }
}
