import 'package:flutter/material.dart';

void main() {
  runApp(Routes());
}

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ejemplo',
      // MaterialApp contains our top-level Navigator
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => Login(),
        '/deportes': (BuildContext context) => Deportes(),
        '/Paisajes': (BuildContext context) => Paisajes(),

       
      },
    );
  }
}


class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"login",
      home: Scaffold(appBar:AppBar(
            toolbarHeight: 200,
            flexibleSpace: Container(
            color: Color(0xFFFF1744),
            child: Column(
            children: [
        Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 100.0,
                ),
                Text("Login",
                style: TextStyle(fontSize: 30,color: Colors.white)),
                
              ],
            ),
      ],
    ),
  ),
          ),
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username'),
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
          ),
          Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password'),
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
          ),
          Text("Forgot Password ?",
          style: TextStyle(fontSize: 10,color: Colors.grey), textAlign: TextAlign.end,),

          OutlineButton(  
                child: 
                Text("Login", style: TextStyle(fontSize: 25.0,),),  
                highlightedBorderColor: Colors.blue,  
                shape: RoundedRectangleBorder(  
                    borderRadius: BorderRadius.circular(15)),  
                onPressed: () {
              },  
              ),
           Text("don´t have an account?",
          style: TextStyle(fontSize: 15,color: Colors.black), textAlign: TextAlign.end,),  
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          
            children:[
              OutlineButton(  
                child: 
                Text("Deportes", style: TextStyle(fontSize: 25.0,),),  
                highlightedBorderColor: Colors.blue,  
                shape: RoundedRectangleBorder(  
                    borderRadius: BorderRadius.circular(15)),  
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Deportes()),
                );
              },  
              ),
              OutlineButton(  
                child: 
                Text("Paisajes", style: TextStyle(fontSize: 25.0,),),  
                highlightedBorderColor: Colors.blue,  
                shape: RoundedRectangleBorder(  
                    borderRadius: BorderRadius.circular(15)),  
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Paisajes()),
                );
              },  
              ),
            ]
          )
        ],)
      )
    );
  }
}


class Deportes extends StatelessWidget { // imganen con titulo descripcion y  box maracada
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Numero 1",
      home: Scaffold(appBar: AppBar(
        backgroundColor: Color(0xFFFF1744),
        title: Text("Deportes"),
        actions: <Widget>[
        ],
        leading: IconButton(icon: Icon(Icons.navigate_before),onPressed: () {
        Navigator.pop(context);
      })
      ),
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row( // deporte 1
              children: [
                Image.network(
              "https://www.ecestaticos.com/image/clipping/b667e335baf67532cbab721c2147fa09/como-vamos-a-disfrutar-del-futbol-si-vamos-a-ver-futbolistas-que-son-robots.jpg",
              height:150,
              width:150,
              ),
              SizedBox(
                height:150,
                width:170,
                child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("titulo",
                  style: TextStyle(fontSize: 30),
                  ),
                  Text("Description")
                ],),
              ),
                Switch(value: false, onChanged: (value){})
              ],),
            Row(// deporte 2
              children: [
                Image.network(
              "https://www.ecestaticos.com/image/clipping/b667e335baf67532cbab721c2147fa09/como-vamos-a-disfrutar-del-futbol-si-vamos-a-ver-futbolistas-que-son-robots.jpg",
              height:150,
              width:150,
              ),
              SizedBox(
                height:150,
                width:170,
                child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("titulo",
                  style: TextStyle(fontSize: 30),
                  ),
                  Text("Description")
                ],),
              ),
                Switch(value: false, onChanged: (value){})
              ],),
            Row(//deporte 3
              children: [
                Image.network(
              "https://www.ecestaticos.com/image/clipping/b667e335baf67532cbab721c2147fa09/como-vamos-a-disfrutar-del-futbol-si-vamos-a-ver-futbolistas-que-son-robots.jpg",
              height:150,
              width:150,
              ),
              SizedBox(
                height:100,
                width:170,
                child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("titulo",
                  style: TextStyle(fontSize: 30),
                  ),
                  Text("Description")
                ],),
              ),
                Switch(value: false, onChanged: (value){})
              ],)
          ],
        )
      ),
    );
  }}

  class Paisajes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Biografy",
      home: Scaffold(appBar: AppBar(
        backgroundColor: Color(0xFFFF1744),
        title: Text("Paisajes"),
        leading: IconButton(icon: Icon(Icons.navigate_before),onPressed: () {
        Navigator.pop(context);
      })
      ),
      body: 
      ListView(children: [
         Column(
          mainAxisAlignment: MainAxisAlignment.start, // posicion arriba o abajo
          crossAxisAlignment: CrossAxisAlignment.start,// posicion derecga -izquierda de objetos stretch: estrechar
          children: <Widget>[
           Image.network(
              "https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada-1440x810.jpg",
              ),
              Image.network(
              "https://i.pinimg.com/originals/54/0c/87/540c87e22c45412eb513ec39fe4cfd1f.gif", //gif
              ),
              Image.network(
              "https://2.bp.blogspot.com/-fwvPqEG2r6Y/UD6p58MIy4I/AAAAAAAAQL4/48MRDYJT440/s1600/689ed65027ad.gif", //gif
              ),
              Image.network(
              "https://1.bp.blogspot.com/-KFybeMAD-YA/VBjrSVj6dEI/AAAAAAACHZA/-Ug5gFHKLoo/s1600/0905gif%2Bpaisaje.gif", //gif
              ),
              Image.network(
              "https://3.bp.blogspot.com/-YOMQmCZIJaU/UkuMVCv1_OI/AAAAAAAB6Fo/8iE2X5VWmM8/s1600/paisaje.gif", //gif
              ),
          ],)
      ],)
      //SizedBox(width: double.infinity,)//Ocupar todo el ancho de lo interno
      )
    );
  }
}

