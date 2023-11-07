import 'package:flutter/material.dart';
import 'package:w_chat/CustomUI/ButtonCard.dart';
import 'package:w_chat/Model/ChatModel.dart';
import 'package:w_chat/Screens/Homescreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  late ChatModel sourceChat;
  List<ChatModel> chatModels = [
    ChatModel(
        name: "user 1",
        icon: "person.svg",
        time: "00.37",
        currentMessage: "Hi my friend",
        availablePlace: "full",
        id: 1),
    ChatModel(
        name: "User 2",
        icon: "person.svg",
        time: "00.35",
        currentMessage: "Welcome to my java  tutorial",
        availablePlace: "full",
        id: 2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatModels.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            sourceChat = chatModels.removeAt(index);
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (builder) => Homescreen(
                          chatmodels: chatModels,
                          sourcechat: sourceChat,
                        )));
          },
          child: ButtonCard(
            name: chatModels[index].name,
            icon: Icons.person,
          ),
        ),
      ),
    );
  }
}
