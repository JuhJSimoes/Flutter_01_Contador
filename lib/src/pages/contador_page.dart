import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{


  @override
  createState() => _ContadorPageState();

}


class _ContadorPageState extends State<ContadorPage>{

  
  final _estiloTexto = new TextStyle(fontSize: 30);

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contando os clicks: ', style: _estiloTexto),
            Text('$_contador', style: _estiloTexto),
          ],
        )
      ),
      
       //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      
      floatingActionButton: _criarBotoes()
    );
  }

  Widget _criarBotoes(){
    
    return FloatingActionButton(
        child: Icon(Icons.add_alarm),
        onPressed: null 
    );
  }

}