import 'package:flutter/material.dart';
import 'package:rick_and_morty/models/persongens.dart';

// ignore: must_be_immutable
class PersonPage extends StatelessWidget {
  Personagem personagem; 

  PersonPage({super.key, required this.personagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(personagem.nome), backgroundColor: Colors.green[600]),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, 
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(personagem.image),
                  radius: 200,
                 ),
                Text(personagem.nome, textAlign: TextAlign.center, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white70),),
                Text(personagem.species, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70)),
                Text(personagem.gender, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70)),
                Text(personagem.status, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70)),
                Text(personagem.type, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white70)),
          ],),),
        )
        ,backgroundColor: Colors.blueGrey[900],
    );
  }
} 