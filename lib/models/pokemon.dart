///Classe modelo de Pokemon
///=
class Pokemon {
  final String name;
  final String image;
  final List<String> type;
  final int id;
  final String num;

  Pokemon(
      {required this.type,
      required this.id,
      required this.num,
      required this.name,
      required this.image});
  factory Pokemon.fromJson(Map<String, dynamic> json) {
    print(json);
    return Pokemon(
      name: json['name'],
      image: json['img'],
      type: (json['type'] as List<dynamic>)
          .map((tipos) => tipos as String)
          .toList(),
      id: json['id'],
      num: json['num'],
    );
  }
}
