class Powerstats {
  String? response;
  String? id;
  String? name;
  String? intelligence;
  String? strength;
  String? speed;
  String? durability;
  String? power;
  String? combat;

  Powerstats(
      {this.response,
      this.id,
      this.name,
      this.intelligence,
      this.strength,
      this.speed,
      this.durability,
      this.power,
      this.combat});

  Powerstats.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    id = json['id'];
    name = json['name'];
    intelligence = json['intelligence'];
    strength = json['strength'];
    speed = json['speed'];
    durability = json['durability'];
    power = json['power'];
    combat = json['combat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['response'] = response;
    data['id'] = id;
    data['name'] = name;
    data['intelligence'] = intelligence;
    data['strength'] = strength;
    data['speed'] = speed;
    data['durability'] = durability;
    data['power'] = power;
    data['combat'] = combat;
    return data;
  }
}
