import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Título - Flutter_01'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contando os clicks: ', style: estiloTexto),
            Text('0', style: estiloTexto),
          ],
        )
      ),
      
       //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){

          print('Olá Brazel!');
        }, 
        ),
    );
  }
}