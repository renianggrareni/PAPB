import 'package:flutter/material.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Note', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Title',
              labelText: 'Title',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              prefixIcon: const Icon(Icons.title) 
            ),
          ),
        const SizedBox(height: 20),
        TextField(
            maxLines: 20,
            decoration: InputDecoration(
              hintText: 'Start typing here...',
              labelText: 'Start typing here...',
              alignLabelWithHint: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            )
          ),
          child: const Text('Save'),
        ),
      ),
    );
  }
}