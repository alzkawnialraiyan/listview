import 'package:flutter/material.dart';
import 'package:listview/models/user.dart';

class HomeScreen extends StatelessWidget {
 HomeScreen({super.key});

  List<user> users = [
    user(
      flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Flag_of_the_United_States.png/1200px-Flag_of_the_United_States.png",
      language: "English"
    ),
    user(
      flag: "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/255px-Flag_of_France.svg.png",
      language: "French"
    ),
    user(
      flag: "https://upload.wikimedia.org/wikipedia/en/thumb/b/ba/Flag_of_Germany.svg/1200px-Flag_of_Germany.svg.png",
      language: "German"
    ),
    user(
      flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5b/Flag_of_Egypt_%28variant%29.png/1200px-Flag_of_Egypt_%28variant%29.png",
      language: "Arabic/Egyptian"
    ),
    user(
      flag: "https://upload.wikimedia.org/wikipedia/commons/8/87/Flag_of_Turkey.png",
      language: "Turkish"
    ),
    user(
      flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Japan_flag_-_variant.png/2560px-Japan_flag_-_variant.png",
      language: "Japanies"
    ),
    user(
      flag: "https://upload.wikimedia.org/wikipedia/commons/0/0f/Flag_of_South_Korea.png",
      language: "Korean"
    ),
    user(
      flag: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Flag_of_China.png/1024px-Flag_of_China.png",
      language: "Chines"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        title: Text("Language", style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Select a language", style: TextStyle(
            color: Colors.grey,
            fontSize: 15
          ),),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .02,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  leading: Image.network(users[index].flag!,
                  width: 60,
                  height: 40,
                  fit: BoxFit.cover,),
                  title: Text(users[index].language!, style: TextStyle(
                    fontWeight: FontWeight.w700
                  ),),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}