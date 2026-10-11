import 'package:flutter/material.dart';
import 'package:horarios_monitores/view/mainPage.dart';

class Splashscreen extends StatelessWidget{
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
          const Center(
            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: Image(image: AssetImage("images/logo.png"),
                                  width: 100,
                                  height: 100,)),
                    Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: InicioButton()
                    )],) 
      )),
      );
  }
}

class InicioButton extends StatefulWidget{
    const InicioButton ({super.key});

    @override
    State<InicioButton> createState() => _InicioButtonState();
}

class _InicioButtonState extends State<InicioButton>{

  @override
  Widget build(BuildContext context){
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontFamily: "Times New Roman",
          fontSize: 20,
          fontWeight: FontWeight(50)
      ),
      foregroundColor: Colors.black,
      
    );

    return Center(
      child: Column(
        children: <Widget>[
          ElevatedButton(
            style:style,
            onPressed: (){ Navigator.pushReplacement(context, 
            MaterialPageRoute(builder: (context) => Mainpage()));},
            child: Text('Iniciar'),)
        ],
      ),
    );
  }
}