import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String texto;
  final String input;
  final Function onChange;
  final TextEditingController controller;
  const Input({Key key, this.texto, this.onChange, this.input, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.00, vertical: 10.00),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$texto",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.00),
            ),
            SizedBox(
              height: 10.00,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.00),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.00),
                color: Color(0XFF2b2e3d).withOpacity(0.5),
              ),
              child: TextFormField(
                controller: controller,
                cursorColor: Color(0XFF2CDA9D),
                decoration: InputDecoration(border: InputBorder.none),
                onChanged: (value) {
                  onChange(value, input);
                },
              ),
            ),
          ]),
    );
  }
}
