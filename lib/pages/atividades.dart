import 'package:flutter/material.dart';

final imagem = 'https://canaldoensino.com.br/blog/wp-c'
    'ontent/uploads/2018/05/creche_escola_programa_sites_secr'
    'etaria_da_educacao_lista_de_espera_creche_vagas_creches'
    '_publicas_SP_prefeitura_vagas_em_creches.jpg';

class Atividades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Imagem(),
              Nome(),
              ListaDiario(),
            ],
          ),
        ),
      ),
    );
  }


}

class ListaDiario extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),

      height: 100,
      width: double.infinity,
      color: Colors.lightGreen,
      decoration: BoxDecoration(),
      child: Column(
        children: [



        ],
      ),
    );

  }
}


Widget Nome() {
  return Text('João Emamanuel', style: TextStyle(fontSize: 28),);
}

class Imagem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              //border: Border.all(),
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
          )
        ],
      ),
    );
  }
}
