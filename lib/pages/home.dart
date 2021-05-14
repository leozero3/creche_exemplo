import 'package:flutter/material.dart';


final List<String> cards = [
  'Lorem Ipsum is simply dummy text of the printing and typesetting '
      'industry. Lorem Ipsum has been the industrys standard dummy tex'
      't ever since the 1500s, when an unknown printer took a galley of'
      ' type and scrambled it to make a type specimen book. It has surviv'
      'ed not only five centuries, but also the leap into electronic types'
      'etting, remaining essentially'
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mural da Creche'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          padding: EdgeInsets.all(10),
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
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Name(),
          Divider(thickness: 5),
          Conteudo(),
          // Divider(thickness: 5)
          Divider(
            indent: 20,
          )
        ],
      ),
    );
  }
}

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(),
                top: BorderSide(),
                right: BorderSide(),
              ),
            ),
            child: Row(
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
                            'https://canaldoensino.com.br/blog/wp-c'
                            'ontent/uploads/2018/05/creche_escola_programa_sites_secr'
                            'etaria_da_educacao_lista_de_espera_creche_vagas_creches'
                            '_publicas_SP_prefeitura_vagas_em_creches.jpg',
                            fit: BoxFit.fill,
                          ),
                        ))),
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
        border: Border(
          right: BorderSide(),
          bottom: BorderSide(),
          left: BorderSide(),
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
