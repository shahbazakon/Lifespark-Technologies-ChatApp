import 'package:flutter/material.dart';
import 'package:w_chat/Model/ChatModel.dart';
import 'package:w_chat/Pages/Chatpage.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key? key, required this.chatmodels, required this.sourcechat})
      : super(key: key);
  final List<ChatModel> chatmodels;
  final ChatModel sourcechat;
  @override
  HomescreenState createState() => HomescreenState();
}

class HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 1, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Life Spark Tech"),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              text: "Chats",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Chatpage(
            chatmodels: widget.chatmodels,
            sourcechat: widget.sourcechat,
          ),
        ],
      ),
    );
  }
}
