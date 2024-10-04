import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: const Icon(
            Icons.remove,
            color: Colors.grey,
            size: 30,
          ),
        ),
        SizedBox(
          height: 48,
          width: 48,
          child: Card(
            color: Colors.grey.shade300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "4",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        TextButton(
          // style: ButtonStyle(iconColor: WidgetStateProperty.all(Colors.green)),
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.green,
            size: 30,
          ),
        ),
      ],
    );
  }
}
