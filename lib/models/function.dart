import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty/models/persongens.dart';

Future<List<Personagem>> pickPerson() async {
  var url = Uri.parse('https://rickandmortyapi.com/api/character');
  var httpcode = await http.get(url);
  if (httpcode.statusCode == 200) {
    var results = jsonDecode(httpcode.body);
    List<Personagem> personagens = [];
    var loop = results['results'];
    loop.forEach((element) {
      Personagem personagem = Personagem(
        id: element['id'].toString(),
        nome: element['name'].toString(),
        status: element['status'].toString(),
        species: element['species'].toString(),
        type: element['type'].toString(),
        gender: element['gender'].toString(),
        origin: element['origin'].toString(),
        image: element['image'],
      );
      personagens.add(personagem);
    });
    return personagens;
  } else {
    throw Exception('Não foi possível carregar os dados');
  }
}
