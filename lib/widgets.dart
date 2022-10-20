import 'package:flutter/material.dart';

Widget imagen() {
    return Center(
      child: Container(
        width: 80, height: 50,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/logo_listado_restaurantes.png"))),
      ),
    );
  }

  Widget titulo(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Listado de Restaurantes", style: TextStyle(fontSize: 20, color: Colors.white)),
          Divider(
              color: Colors.white,
              thickness: 2,
            ),
          ],
        ),
    );
  }

  Widget buscar(){
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10, top: -10, right: 10, bottom: 0),
          fillColor: Colors.white,
          hintText: "Buscar restaurantes, departamentos",
          hintStyle: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }

  Widget btnBuscar(){
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: IconButton(onPressed: null, icon: Icon(Icons.search), color: Colors.black,),
      ),
    );
  }