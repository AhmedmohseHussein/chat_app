import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewMessage extends StatefulWidget {
  const NewMessage({super.key});

  @override
  State<NewMessage> createState() {
    return _NewMessageState();
  }
}

class _NewMessageState extends State<NewMessage> {

  var _messageController=TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 1, bottom: 14),
      child: Row(
        children: [
        Expanded(child: TextField(
          controller:_messageController ,
          autocorrect: true,
          textCapitalization: TextCapitalization.sentences,
          enableSuggestions: true,
          decoration: const InputDecoration(
        labelText: 'send a message...'
          ),
        ) ),
          IconButton(
            color: Theme.of(context).colorScheme.primary,
            onPressed: () {},
            icon: const Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
