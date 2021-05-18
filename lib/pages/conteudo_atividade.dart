import 'package:flutter/material.dart';

class ConteudoAtividade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
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
                        Checkbox(
                          value: true,
                          onChanged: (bool value) {},
                        ),
                        Text('Evacuou'),
                        QuebraLinha(),
                      ],
                    ),
                  )
                ],
              ),
            ),
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
        width: MediaQuery.of(context).size.width - 50,
        color: Colors.black,
      ),
    );
  }
}
