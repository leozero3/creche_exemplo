import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> cards = [
  'Lorem Ipsum is simply dummy text of the printing and typesetting '
      'industry. Lorem Ipsum has been the industrys standard dummy tex'
      't ever since the 1500s, when an unknown printer took a galley of'
      ' type and scrambled it to make a type specimen book. It has surviv'
      'ed not only five centuries, but also the leap into electronic types'
      'etting, remaining essentially'
];

final imagem = 'https://canaldoensino.com.br/blog/wp-c'
    'ontent/uploads/2018/05/creche_escola_programa_sites_secr'
    'etaria_da_educacao_lista_de_espera_creche_vagas_creches'
    '_publicas_SP_prefeitura_vagas_em_creches.jpg';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.red[500],
      //   title: Text('Mural da Creche'),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.black54,
      body: SafeArea(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Card();
          },
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Name(),
            // Divider(thickness: 5),
            Conteudo(),
            // Divider(thickness: 5)
            Divider(
              indent: 20,
            )
          ],
        ),
      ),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Colors.white60,
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(150),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  clipBehavior: Clip.hardEdge,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                    ),
                    child: Image.network(
                      imagem,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  Text(
                    'Creche do Crescer Feliz',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(DateTime.now().toString())
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Conteudo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          cards.toString(),
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
