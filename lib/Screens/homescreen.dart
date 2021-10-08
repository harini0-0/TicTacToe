import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> fixers = ['','','','','','','','',''];

  bool turn = true; // the first player is O!
  var myTextStyle = TextStyle(color: Colors.white, fontSize: 30);
  int oScore = 0;
  int xScore = 0;
  int drawScore = 0;
  int counter = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff002045),
        body: Column(
          children: <Widget>[
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Text('TIC TAC TOE', style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Player O', style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
                          SizedBox(
                            height: 20,
                          ),
                          Text(oScore.toString(), style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Draws', style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
                          SizedBox(
                            height: 20,
                          ),
                          Text(drawScore.toString(), style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Player X', style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
                          SizedBox(
                            height: 20,
                          ),
                          Text(xScore.toString(), style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: GridView.builder(
                  itemCount: 9,
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        _tapped(index);
                      },
                      child: Container(
                        decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                        child: Center(
                          child: Text(
                            fixers[index],
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Expanded(child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    _clearBoard();
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Reset Board", style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
                        SizedBox(width: 10,),
                        Icon(Icons.restart_alt, size: 20, color: Colors.white,),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                GestureDetector(
                  onTap: (){
                    _clearGame();
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Restart Game", style: TextStyle(color: Colors.white, letterSpacing: 3, fontSize: 15),),
                        SizedBox(width: 10,),
                        Icon(Icons.gamepad_outlined, size: 20, color: Colors.white,),
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  void _tapped(int index) {

    setState(() {
      if (turn && fixers[index] == '') {
        fixers[index] = 'o';
        counter += 1;
      } else if (!turn && fixers[index] == ''){
        fixers[index] = 'x';
        counter += 1;
      }

      turn = !turn;
      _checkWinner();
    });
  }

  void _checkWinner() {

    // checks 1st row
    if (fixers[0] == fixers[1] &&
        fixers[0] == fixers[2] &&
        fixers[0] != '') {
      _showWinDialog(fixers[0]);
    }

    // checks 2nd row
    if (fixers[3] == fixers[4] &&
        fixers[3] == fixers[5] &&
        fixers[3] != '') {
      _showWinDialog(fixers[3]);
    }

    // checks 3rd row
    if (fixers[6] == fixers[7] &&
        fixers[6] == fixers[8] &&
        fixers[6] != '') {
      _showWinDialog(fixers[6]);
    }

    // checks 1st column
    if (fixers[0] == fixers[3] &&
        fixers[0] == fixers[6] &&
        fixers[0] != '') {
      _showWinDialog(fixers[0]);
    }

    // checks 2nd column
    if (fixers[1] == fixers[4] &&
        fixers[1] == fixers[7] &&
        fixers[1] != '') {
      _showWinDialog(fixers[1]);
    }

    // checks 3rd column
    if (fixers[2] == fixers[5] &&
        fixers[2] == fixers[8] &&
        fixers[2] != '') {
      _showWinDialog(fixers[2]);
    }

    // checks diagonal
    if (fixers[6] == fixers[4] &&
        fixers[6] == fixers[2] &&
        fixers[6] != '') {
      _showWinDialog(fixers[6]);
    }

    // checks diagonal
    if (fixers[0] == fixers[4] &&
        fixers[0] == fixers[8] &&
        fixers[0] != '') {
      _showWinDialog(fixers[0]);
    }

    else if(counter == 9){
      _showDrawDialog();
    }

  }

  void _showDrawDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('DRAW'),
            actions: <Widget>[
              TextButton(
                child: Text('Play Again!'),
                onPressed: (){
                  _clearBoard();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
    drawScore+=1;
    print(drawScore);
  }

  void _showWinDialog(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('WINNER IS: ' + winner),
            actions: <Widget>[
              TextButton(
                child: Text('Play Again!'),
                onPressed: (){
                  _clearBoard();
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });

    if(winner == 'o') {
      oScore += 1;
    } else if (winner == 'x') {
      xScore += 1;
    }
  }

  void _clearBoard() {
    setState(() {
      for(int i=0; i<9; i++){
        fixers[i] = '';
      }
    });
    counter = 0;
  }
  void _clearGame() {
    setState(() {
      for(int i=0; i<9; i++){
        fixers[i] = '';
      }
    });
    counter = 0;
    oScore = 0;
    xScore = 0;
    drawScore = 0;
    turn = true;
  }
}



