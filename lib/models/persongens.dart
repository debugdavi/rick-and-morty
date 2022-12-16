class Personagens{
  final List personagens;

  Personagens(this.personagens);
}

class Personagem{
  final String id;
  final String nome;
  final String status;
  final String species;
  final String type;
  final String gender;
  final String origin;
  final String image;


  String getId(){
    return id;
  }

  String getNome(){
    return nome;
  }

  String getStatus(){
    return status;
  }

  String getSpecies(){
    return species;
  }

  String getType(){
    return type;
  }

  String getGender(){
    return gender;
  }

  String getOrigin(){
    return origin;
  }

  String getImage(){
    return image;
  }

  Personagem({
    required this.id,
    required this.nome,
    required this.status,
    required this.species,
    required this.type,
    required this.gender, 
    required this.origin,
    required this.image
  });

  factory Personagem.fromJson(Map<String, dynamic> json){
    return Personagem(
      id: json['id'], 
      nome: json['nome'], 
      status: json['status'],
      species: json['species'], 
      type: json['type'], 
      gender: json['gender'], 
      origin: json['origin'], 
      image: json['image']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'nome': nome,
    'status': status,
    'species': species,
    'type': type,
    'gender': gender,
    'origin': origin,
    'image': image
  };
}
