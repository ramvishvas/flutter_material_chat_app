import 'package:flutter/material.dart';
import 'package:flutter_material_chat_app/pages/pages.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<String> _message = <String>[];

  final TextEditingController _textController = TextEditingController();

  void _handledSubmitted(String value) {
    _textController.clear();
    if (value != null && value != '') {
      setState(() {
        _message.insert(0, value);
      });
    }
  }

  Widget _textComposerWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
      padding: const EdgeInsets.fromLTRB(20, 2, 8, 2),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.pinkAccent),
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: 'Send a message',
              ),
              controller: _textController,
              onSubmitted: _handledSubmitted,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: IconButton(
              icon: Icon(Icons.send),
              color: Colors.pinkAccent,
              onPressed: () => _handledSubmitted(_textController.text),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: _message.length == 0
              ? Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: Center(child: Text('No Chat Data')),
                )
              : ListView.builder(
                  reverse: true,
                  itemCount: _message.length,
                  itemBuilder: (_, int index) {
                    return MessageCard(
                      message: _message[index],
                    );
                  },
                ),
        ),
        Divider(
          height: 1.0,
        ),
        _textComposerWidget(),
      ],
    );
  }
}
