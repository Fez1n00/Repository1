import 'package:flutter/material.dart';

void main() {
  runApp(PinterestClone());
}

class PinterestClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PinterestScreen(),
    );
  }
}

class PinterestScreen extends StatefulWidget {
  @override
  _PinterestScreenState createState() => _PinterestScreenState();
}

class _PinterestScreenState extends State<PinterestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinterest Clone'),
      ),
      body: ListView.builder(
        itemCount: 10, // Número de itens na tela
        itemBuilder: (BuildContext context, int index) {
          return PinterestItem(index: index);
        },
      ),
    );
  }
}

class PinterestItem extends StatelessWidget {
  final int index;

  PinterestItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagem simulada
          Image.network(
            'https://via.placeholder.com/150', // URL da imagem
            width: double.infinity,
            height: 200.0,
            fit: BoxFit.cover,
          ),
          // Título simulado
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Título do Item $index',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          // Descrição simulada
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Descrição do Item $index',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
