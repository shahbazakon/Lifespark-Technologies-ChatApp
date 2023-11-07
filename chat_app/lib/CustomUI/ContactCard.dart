import 'package:flutter/material.dart';
import 'package:w_chat/Model/ChatModel.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({Key? key, required this.contact}) : super(key: key);
  final ChatModel contact;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: const CircleAvatar(
          radius: 25,
          child: Icon(Icons.account_circle_outlined,
              size: 35, color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        title: Text(
          contact.name,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          contact.availablePlace,
          style: const TextStyle(
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
