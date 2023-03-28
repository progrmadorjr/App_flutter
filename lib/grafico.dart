
import 'package:flutter/material.dart';


class Grafico extends StatefulWidget {
  const Grafico({super.key});

  @override
  State<Grafico> createState() => _GraficoState();
}

class _GraficoState extends State<Grafico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grafico'),));
  }
  }
