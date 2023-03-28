import 'package:flutter/material.dart';
import 'grafico.dart';
import 'contrato.dart';


class Dash extends StatefulWidget {
  const Dash({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Dash();
  }
}

class _Dash extends State<Dash> {
  int _opcaoSelecionada = 0;
  @override
  Widget build(BuildContext context) {

          return Scaffold(
            appBar: AppBar(
              title: Center(
               child: Text('On Investimentos'),
              
              ),
            ),
//cor de fundo
            backgroundColor: Color.fromARGB(255, 213, 211, 205),
//codigo da menu lateral
            drawer: Drawer(
              child: ListView(
              padding: EdgeInsets.zero,
            children: [

          UserAccountsDrawerHeader(
            accountName: Text('Edward Newgate'),
             accountEmail: Text(""),
             currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child:Image.network(
                  
                  'https://pm1.narvii.com/6368/92547888cfa49a2d03c83b1fdcf10e400e0aed02_hq.jpg',
                width: 90, 
                 height: 90,
                  fit: BoxFit.cover,

                ),
              ), 
            ),
            decoration: BoxDecoration(
              color: Colors.blue,

              image: DecorationImage(
                image: NetworkImage(

                  'https://a-static.besthdwallpaper.com/one-piece-thousand-sunny-wallpaper-2800x2100-8306_28.jpg',

                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

         ListTile(
          leading: Icon(Icons.mail),
           title: Text('E-mail'),
            onTap: () => print('clicou'),
          ),
        
          ListTile(
           leading: Icon(Icons.phone),
            title: Text('Contato'),
             onTap: () => print('clicou'),
           ),
      
          ListTile(
           leading: Icon(Icons.description),
            title: Text('Politica'),
             onTap: () => print('clicou'),
         ),

          ListTile(
           leading: Icon(Icons.settings),
            title: Text('Ajustes'),
             onTap: () => print('clicou'),
        ),
         Divider(),
         ListTile(
          leading: Icon(Icons.exit_to_app),
           title: Text('Sair'),
            onTap: () => print('clicou'),

         ),
        ],
      ),
    ), 

//codigo da interface central 
         body: Container(
          padding: EdgeInsets.all(30.0),
           child: GridView.count(
            crossAxisCount: 2,
             children: [
              Card(
                margin: EdgeInsets.all(8.8),
                 child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => Grafico(),
                      ),
                      );
                  },
                   child: Center(
                    child: Column(
                     mainAxisSize: MainAxisSize.min,
                      children: [
                      Icon(Icons.align_vertical_bottom, size: 60.0, color: Colors.white,),
                       Text('Gráfico')
                    ],
                  ),
                ),
              ),
            ),
              Card(
                margin: EdgeInsets.all(8.8),
                 child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(
                      builder: (context) => Contrato(),
                      ),
                      );
                  },
                   child: Center(
                    child: Column(
                     mainAxisSize: MainAxisSize.min,
                      children: [

                      Icon(Icons.list, size: 60.0, color: Colors.white,

                    ),
                    Text('Contrato')
                    ],
                  ),
                ),
              ),
              ),

              Card(
                margin: EdgeInsets.all(8.8),
                 child: InkWell(
                  onTap: () {},
                   child: Center(
                    child: Column(
                     mainAxisSize: MainAxisSize.min,
                      children: [

                      Icon(Icons.account_balance, size: 60.0, color: Colors.blue,

                    ),
                    Text('Tabela de valores')
                    ],
                  ),
                ),
              ),
            ),

              Card(
                margin: EdgeInsets.all(8.8),
                 child: InkWell(
                  onTap: () {},
                   child: Center(
                    child: Column(
                     mainAxisSize: MainAxisSize.min,
                      children: [

                      Icon(Icons.contact_mail, size: 60.0, color: Colors.blue,

                    ),
                    Text('Documentação')
                    ],
                  ),
                ),
              ),
             ),

              Card(
                margin: EdgeInsets.all(8.8),
                 child: InkWell(
                  onTap: () {},
                   child: Center(
                    child: Column(
                     mainAxisSize: MainAxisSize.min,
                      children: [

                      Icon(Icons.grading, size: 60.0, color: Colors.blue, 

                    ),
                    Text('Parcelas pagas')
                    ],
                  ),
                ),
              ),
            ),

              Card(
                margin: EdgeInsets.all(8.8),
                 child: InkWell(
                  onTap: () {},
                   child: Center(
                    child: Column(
                     mainAxisSize: MainAxisSize.min,
                      children: [

                      Icon(Icons.attach_money, size: 60.0, color: Color.fromARGB(255, 33, 150, 243),
                      
                    ),
                    Text('Cotação')
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

// Bottões de navegação
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _opcaoSelecionada,
        onTap: (opcao) {
          print('clicou $opcao');
          setState(() {
                   _opcaoSelecionada = opcao;
          });
   
        },
        items:
      [
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notificação'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Pesquisa'),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'Chat'),
        
        
      ]
      ),
      
    );
    
  }
}
