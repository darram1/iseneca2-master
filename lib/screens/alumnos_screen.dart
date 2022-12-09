import 'package:flutter/material.dart';


class AlumnosScreen extends StatelessWidget {
  const AlumnosScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    final tam = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alumno del centro'),
      ),
      body: Center(
        child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'expulsados');
                  }, 
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 5, 138, 221),
                      side: const BorderSide(color: Color.fromARGB(255, 4, 126, 202), width: 10) 
                    ),
                  child: SizedBox(
                    width:tam.width*0.90, 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                         Text('Alumnos Expulsados', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)),
                      ],
                    ),
                  )),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'convivencia');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 5, 138, 221),
                      side: const BorderSide(color: Color.fromARGB(255, 4, 126, 202), width: 10)
                    ),     
                  child: SizedBox(
                    width:tam.width*0.90, 
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const[
                        Text('Alumnos Convivencias', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                      ],
                  ))),
                ),
              )
            ]
          ),
      )

    );
  }
}



