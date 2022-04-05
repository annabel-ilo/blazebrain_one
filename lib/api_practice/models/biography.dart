class Biography {
  String? response;
  String? id;
  String? name;
  String? fullName;
  String? alterEgos;
  List<String>? aliases;
  String? placeOfBirth;
  String? firstAppearance;
  String? publisher;
  String? alignment;

  Biography(
      {this.response,
      this.id,
      this.name,
      this.fullName,
      this.alterEgos,
      this.aliases,
      this.placeOfBirth,
      this.firstAppearance,
      this.publisher,
      this.alignment});

  Biography.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    id = json['id'];
    name = json['name'];
    fullName = json['full-name'];
    alterEgos = json['alter-egos'];
    aliases = json['aliases'].cast<String>();
    placeOfBirth = json['place-of-birth'];
    firstAppearance = json['first-appearance'];
    publisher = json['publisher'];
    alignment = json['alignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['response'] = response;
    data['id'] = id;
    data['name'] = name;
    data['full-name'] = fullName;
    data['alter-egos'] = alterEgos;
    data['aliases'] = aliases;
    data['place-of-birth'] = placeOfBirth;
    data['first-appearance'] = firstAppearance;
    data['publisher'] = publisher;
    data['alignment'] = alignment;
    return data;
  }
}
