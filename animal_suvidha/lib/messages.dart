import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  final List Messages;

  const MessagesScreen({Key? key, required this.Messages}) : super(key: key);

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return ListView.separated(
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: widget.Messages[index]['isUserMessage']
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          20,
                        ),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(
                            widget.Messages[index]['isUserMessage'] ? 0 : 20),
                        topLeft: Radius.circular(
                            widget.Messages[index]['isUserMessage'] ? 20 : 0),
                      ),
                      color: widget.Messages[index]['isUserMessage']
                          ? Colors.grey.shade800
                          : Colors.grey.shade900.withOpacity(0.8)),
                  constraints: BoxConstraints(maxWidth: w * 2 / 3),
                  child: Text(widget.Messages[index]['message'].text.text[0])),
            ],
          ),
        );
      },
      separatorBuilder: (_, i) => Padding(padding: EdgeInsets.only(top: 10)),
      itemCount: widget.Messages.length,
    );
  }
}
