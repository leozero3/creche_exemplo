import 'package:flutter/material.dart';

class ConteudoAtividade extends StatelessWidget {


  var decoracaoContainer = BoxDecoration(color: Colors.white10,
    borderRadius: BorderRadius.circular(15),
    border: Border.all(color: Colors.black54)

  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atividades Diária'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(2),
          child: Column(

            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                decoration: decoracaoContainer,
                child: Column(
                  children: [

                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Minhas Refeiçoes",
                      style: TextStyle(
                          fontSize: 22.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                    ),
                    QuebraLinha(),
                    Text(
                      "Leite",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto"),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Sim'),
                        Checkbox(
                          value: true,

                          onChanged: (bool value) {},
                        ),
                        Text('Não'),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Observações'),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    QuebraLinha(),
                    Text(
                      "Frutas",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto"),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Sim'),
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Não'),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Observações'),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    QuebraLinha(),
                    Text(
                      "Lanche",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto"),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Sim'),
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Não'),
                      ],
                    ),
                    TextField(

                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Observações'),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                    QuebraLinha(),
                    Text(
                      "Almoço",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Roboto"),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Sim'),
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Não'),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Observações'),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: decoracaoContainer,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),

                    Text(
                      "Necessidades Fisiológicas",
                      style: TextStyle(
                          fontSize: 22.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                    ),
                    QuebraLinha(),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Evacuou'),
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Xixi'),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Observações'),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: decoracaoContainer,
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),

                    Text(
                      "Atividades",
                      style: TextStyle(
                          fontSize: 22.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                    ),
                    QuebraLinha(),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Participou'),
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Não Parcipou'),
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Observações'),
                      style: TextStyle(
                          fontSize: 20.0,
                          color: const Color(0xFF000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Roboto"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuebraLinha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 5),
      child: Container(
        height: 2,
        width: MediaQuery
            .of(context)
            .size
            .width - 50,
        color: Colors.black,
      ),
    );
  }
}
