import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final String message;

  const MessageCard({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Text('RK'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ramvishvas',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(message),
              )
            ],
          )
        ],
      ),
    );
  }
}
