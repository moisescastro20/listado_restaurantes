import 'package:flutter/material.dart';
import 'package:flutter_listado_restaurantes/widgets.dart';
import 'package:flutter_listado_restaurantes/json/restaurantes_json.dart';

class Restaurantes extends StatelessWidget {
  const Restaurantes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Listado de Restaurantes",
      home: listado_restaurantes(),
      theme: ThemeData(primaryColor: Colors.blueGrey),
    );
  }
}

class listado_restaurantes extends StatefulWidget {
  listado_restaurantes({Key? key}) : super(key: key);

  @override
  State<listado_restaurantes> createState() => _listado_restaurantesState();
}

class _listado_restaurantesState extends State<listado_restaurantes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: principal(),
    );
  }
}

Widget principal() {
  return Container(
    child: Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: head(),
        ),
        Expanded(
          flex: 7,
          child: contenido(),
        ),
      ],
    ),
  );
}

Widget head() {
  return Container(
    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
    color: Color(0xffcc0000),
    child: Center(
      child: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: imagen(),
                ),
                Expanded(
                  flex: 8,
                  child: titulo(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 4,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 8,
                    child: buscar(),
                  ),
                  Expanded(
                    flex: 2,
                    child: btnBuscar(),
                  ),
                ],
              )),
        ],
      ),
    ),
  );
}

Widget contenido() {
  return ListView(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
        child: Column(
          children: List.generate(3, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 0),
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 190,
                            height: 120,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(detalles[index]['imagen']),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 30, left: 12),
                            child: Column(
                              children: [
                                Text(detalles[index]['nombre'],
                                    style: TextStyle(fontSize: 18, color: Colors.red)),
                                Text(detalles[index]['ubicacion'],
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                                Text("Teléfono: " + detalles[index]['telefono'],
                                    style: TextStyle(fontSize: 15, color: Colors.black)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      )
    ],
  );
}
