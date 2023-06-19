import 'package:flutter/material.dart'; //import all the widget to application

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,         
            children: [
              Center(
                child: CircleAvatar(backgroundImage:AssetImage('assets/img1.jpg'),
                radius: 50.0,
                ),
              ),
              Divider(height: 60,),
              
              Row(children: [
                Icon(Icons.people),
                Text("  NAME",style: TextStyle(fontWeight: FontWeight.bold),)
              ]),
              Text("Wen Teng"),
              Row(children: [Text("")],),
              Row(children:[Icon(Icons.email),
              Text("  EMAIL",style: TextStyle(fontWeight: FontWeight.bold))
            ]),
            Text("tengi@gmail.com"),
            Row(children: [Text("")],),
            Row(children:[Icon(Icons.thumb_up),
            Text("  LIKE COUNT",style: TextStyle(fontWeight: FontWeight.bold))
            ]),
            Text(counter.toString()),
              Center(child: ElevatedButton(onPressed: (){
                setState(() {
                    counter++;
                });
              }, child:Icon(Icons.thumb_up)))         
            ],
          ),
        ),
        drawer: Drawer(),
        appBar: AppBar(
          // centerTitle: true,
          title: Text("Profile App"),
          backgroundColor: Colors.yellow[600],
          
        ),
        floatingActionButton: FloatingActionButton(
          
          child: Icon(Icons.thumbs_up_down_rounded),
          onPressed:(){
            print("Liked");
          },
          backgroundColor: Colors.amber,
        ),
      );
  }
}

