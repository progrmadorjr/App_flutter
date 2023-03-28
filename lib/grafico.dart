import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Grafico extends StatefulWidget {
  const Grafico({super.key});

  @override
  State<Grafico> createState() => _GraficoState();
}

class _GraficoState extends State<Grafico> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 400,
                    height: 700,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://arquitecturapanamericana.com/wp-content/gallery/EDIFICIO-LA-RIVIERA-1/EDIFICIO-LA-RIVIERA-008.JPG'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Gráfico',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            height: 2,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Positioned(
                            child: Column(
                          children: [
                            Container(
                              height: 15,
                            )
                          ],
                        )),
                        //gráfico
                        SizedBox(
                          height: 220,
                          child: PieChart(
                            PieChartData(
                              startDegreeOffset: 90,
                              sections: [
                                PieChartSectionData(
                                  color: Color.fromARGB(255, 41, 202, 87),
                                  value: 10,
                                  title: '50%',
                                  titleStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                  ),
                                  showTitle: true,
                                  radius: 50,
                                ),
                                PieChartSectionData(
                                  color: Color.fromARGB(255, 8, 125, 53),
                                  title: '',
                                  titleStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    decoration: TextDecoration.none,
                                  ),
                                  showTitle: true,
                                  radius: 45,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            child: Column(
                          children: [
                            Container(
                              height: 20,
                            )
                          ],
                        )),
                        //bottom navigation
                        SizedBox(
                          width: 300.0,
                          height: 50.0,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Adicione o código que deseja executar ao clicar no botão aqui.
                            },
                            icon: Icon(Icons.add),
                            label: Text('Adicionar'),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide.none),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                          ),
                        ),
                        Positioned(
                            child: Column(
                          children: [
                            Container(
                              height: 30,
                            )
                          ],
                        )),
                        SizedBox(
                          width: 300.0,
                          height: 50.0,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Adicione o código que deseja executar ao clicar no botão aqui.
                            },
                            icon: Icon(Icons.add),
                            label: Text('Adicionar'),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide.none),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                          ),
                        ),
                        Positioned(
                            child: Column(
                          children: [
                            Container(
                              height: 30,
                            )
                          ],
                        )),
                        SizedBox(
                          width: 300.0,
                          height: 50.0,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Adicione o código que deseja executar ao clicar no botão aqui.
                            },
                            icon: Icon(Icons.add),
                            label: Text('Adicionar'),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide.none),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                          ),
                        ),
                        Positioned(
                            child: Column(
                          children: [
                            Container(
                              height: 30,
                            )
                          ],
                        )),
                        SizedBox(
                          width: 400.0,
                          height: 50.0,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              // Adicione o código que deseja executar ao clicar no botão aqui.
                            },
                            icon: Icon(Icons.add),
                            label: Text('Adicionar'),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide.none),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
