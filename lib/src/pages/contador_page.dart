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
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _subtrair),
        SizedBox(width: 5.0,),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
      ]
    );  
    
  }


  void _agregar(){
    setState(() => _contador++);
  }

  void _subtrair(){
    setState(() => _contador--);

  }

  void _reset(){

    setState(() => _contador=0);
  }

}