import 'package:flutter/material.dart';
import 'package:rick_and_morty/models/function.dart';
import 'package:rick_and_morty/views/person_page.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rick and Morty '),
          backgroundColor: Colors.green[600],
          ),
        body: FutureBuilder(
          future: pickPerson(), 
          builder: (context, snapshot){
          if(snapshot.data == null){
            return const Text('Carregando...');
          }else{
            return ListView.builder(
          itemCount: snapshot.data!.length, 
          itemBuilder: (context, index){
            var personagem = snapshot.data![index];
              return ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PersonPage(personagem: personagem), ));
                },
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(personagem.image),
                  
                 ),
                title: Text(personagem.nome, style: const TextStyle(color: Colors.white70),),
                subtitle: Text(personagem.species, style: const TextStyle(color: Colors.white70)),
                trailing: Text(personagem.status, style: const TextStyle(color: Colors.white70)),
              );
            });
          }
        }),
        backgroundColor: Colors.blueGrey[900],
        ),
      );
  }
}