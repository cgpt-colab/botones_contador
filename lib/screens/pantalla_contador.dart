import 'package:flutter/material.dart';

class Pantalla_Contador extends StatefulWidget {
  const Pantalla_Contador({super.key});

  @override
  State<Pantalla_Contador> createState() => _Pantalla_ContadorState();
}

class _Pantalla_ContadorState extends State<Pantalla_Contador> {
  int contador = 0;

  void incrementar(){
    setState((){
      contador++;
    });
  }
  void disminuir(){
    setState((){
      contador--;
    });
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Contador'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text(
              'Contador actual',
              style: TextStyle(fontSize: 24),
            ),
            
            const SizedBox(height:20),

            Text(
              '$contador',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              )
            ),

            const SizedBox(height:20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                ElevatedButton(
                  onPressed: disminuir,
                  child: const Text('-1'),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                  onPressed: incrementar, 
                  child: const Text('+1'),
                )
              ],
            )
          ]

        )
      )
    );
  }
}