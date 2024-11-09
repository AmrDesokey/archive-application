import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clickable Images App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أرشيف قيادة الأميرية'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/Shoubra114.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/Ameria114.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/Archief.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('شبرا 114'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPageA()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/bike.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstPageB()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/car.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPageA extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الدراجات النارية'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter numbers only',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int number = int.tryParse(_controller.text) ?? 0;
                  String notebook = findNotebook(number);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Result'),
                        content: Text(' $notebook'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String findNotebook(int number) {
    Map<String, List<int>> notebooks = {
      'دفتر 1': [314192, 314966],
      'دفتر 2': [314967, 315000],
      'دفتر2': [450001, 450709],
      'دفتر 3': [450710, 451141],






      // Add more notebooks if needed
    };
    for (var notebook in notebooks.entries) {
      if (number >= notebook.value[0] && number <= notebook.value[1]) {
        return notebook.key;
      }
    }
    return 'مفقود'; // Return a default value if the number doesn't belong to any notebook
  }
}

class FirstPageB extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('السيارات الخاصة'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter numbers only',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int number = int.tryParse(_controller.text) ?? 0;
                  String notebook = findNotebook(number);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Result'),
                        content: Text(' $notebook'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String findNotebook(int number) {
    Map<String, List<int>> notebooks = {
      'دفتر 1': [3142485, 3143160],
      'دفتر 2': [3143161, 3143960],
      'دفتر 3': [3143967, 3145563],
      'دفتر 4': [3145572, 3147044],
      'دفتر 5': [3147049, 3148561],
      'دفتر 6': [3148582, 3750126],
      'دفتر 7': [3751511, 3753058],
      'دفتر 8': [3753059, 3754562],
      'دفتر 9': [3754567, 3756090],
      'دفتر 10': [3756104, 3757658],
      'دفتر 11': [3757767, 3759164],
      'دفتر 12': [3759185, 3760664],
      'دفتر 13': [3760685, 3762123],
      'دفتر 14': [3762172, 3763667],
      'دفتر 15': [3763692, 3765191],
      'دفتر 16': [3765192, 3766799],
      'دفتر 17': [3766822, 376830],
      'دفتر 18': [3768357, 3769910],
      'دفتر 19': [3769971, 3771435],
      'دفتر 20': [3771462, 3771905],

      // Add more notebooks if needed
    };
    for (var notebook in notebooks.entries) {
      if (number >= notebook.value[0] && number <= notebook.value[1]) {
        return notebook.key;
      }
    }
    return 'Not found'; // Return a default value if the number doesn't belong to any notebook
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأميرية 114'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPageA()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/bike.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPageB()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/car.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPageA extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الدراجات النارية'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter numbers only',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int number = int.tryParse(_controller.text) ?? 0;
                  String notebook = findNotebook(number);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Result'),
                        content: Text(' $notebook'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String findNotebook(int number) {
    Map<String, List<int>> notebooks = {
      'دفتر 1': [1, 613],
      'دفتر 2': [618, 1304],
      'دفتر 3': [1310, 1706],
      'دفتر 4': [1707, 2271],
      'دفتر 5': [2272, 2827],
      'دفتر 6': [2873, 3531],
      'دفتر 7': [3532, 4250],
      'دفتر 8': [4251, 4841],
      'دفتر 9': [4842, 5446],
      'دفتر 10': [5447, 5991],
      'دفتر 11': [5992, 7580],
      'دفتر 12': [7581, 8180],
      'دفتر 13': [8181, 8766],
      'دفتر 14': [8767, 9360],
      'دفتر 15': [9361, 9945],
      'دفتر 16': [9946, 10634],
      'دفتر 17': [10635, 11296],
      'دفتر 18': [11299, 11972],
      'دفتر 19': [11973, 12532],
      'دفتر 20': [12533, 13068],
     // 'دفتر 21': [9361, 9945],
      'دفتر 22': [13856, 14456],
      'دفتر 23': [14457, 15068],
      'دفتر 24': [15069, 16536],
      'دفتر 25': [16537, 17314],
      'دفتر 26': [17317, 18904],
      'دفتر 27': [18905, 19643],
      'دفتر 28': [19644, 20433],
      'دفتر 29': [20434, 21727],
      'دفتر 30': [21728, 22532],
      'دفتر 31': [22533, 23456],
      'دفتر 32': [23457, 24720],
      'دفتر 33': [24721, 25549],
      'دفتر 34': [25550, 27511],





      // Add more notebooks if needed
    };
    for (var notebook in notebooks.entries) {
      if (number >= notebook.value[0] && number <= notebook.value[1]) {
        return notebook.key;
      }
    }
    return 'مفقود'; // Return a default value if the number doesn't belong to any notebook
  }
}

class SecondPageB extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('السيارات الخاصة'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter numbers only',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int number = int.tryParse(_controller.text) ?? 0;
                  String notebook = findNotebook(number);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Result'),
                        content: Text(' $notebook'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String findNotebook(int number) {
    Map<String, List<int>> notebooks = {
      'دفتر 1': [1, 689],
      'دفتر 2': [690, 1489],
      'دفتر 3': [1490, 2289],
      'دفتر 4': [2290, 3053],
      'دفتر 5': [3054,3745],
      'دفتر 6': [3746,4305],
      'دفتر 7': [4306, 4908],
      'دفتر 8': [4909, 5680],
      'دفتر 9': [5681, 6365],
      'دفتر 10': [6366, 7125],
      'دفتر 11': [7126, 7841],
      'دفتر 12': [7842, 8421],
      'دفتر 13': [8422, 9012],
      'دفتر 14': [9013, 9600],
      'دفتر 15': [9601, 10182],
      'دفتر 16': [10183, 10578],
      'دفتر 17': [10579, 10966],
      'دفتر 18': [10967, 11366],
      'دفتر 19': [11367, 11706],
      'دفتر 20': [11707, 12100],
      'دفتر 21': [12101, 12494],
      'دفتر 22': [12495, 13314],
      'دفتر 23': [13315, 13922],
      'دفتر 24': [13923, 14545],
      'دفتر 25': [14546, 15125],
      'دفتر 26': [15126, 15839],
      'دفتر 27': [15852, 16441],
      'دفتر 28': [16442, 17029],
      'دفتر 29': [17031, 17621],
      'دفتر 30': [17622, 18201],
      'دفتر 31': [690, 1489],
      'دفتر 32': [690, 1489],
      'دفتر 33': [690, 1489],
      'دفتر 34': [690, 1489],
      'دفتر 35': [690, 1489],
      'دفتر 36': [690, 1489],
      'دفتر 37': [690, 1489],
      'دفتر 38': [690, 1489],
      'دفتر 39': [690, 1489],
      'دفتر 40': [690, 1489],
      'دفتر 41': [690, 1489],
      'دفتر 42': [690, 1489],
      'دفتر 43': [690, 1489],
      'دفتر 44': [690, 1489],
      'دفتر 45': [690, 1489],
      'دفتر 46': [690, 1489],
      'دفتر 47': [690, 1489],
      'دفتر 48': [690, 1489],
      'دفتر 49': [690, 1489],
      'دفتر 50': [690, 1489],

      // Add more notebooks if needed
    };
    for (var notebook in notebooks.entries) {
      if (number >= notebook.value[0] && number <= notebook.value[1]) {
        return notebook.key;
      }
    }
    return 'Not found'; // Return a default value if the number doesn't belong to any notebook
  }
}

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأرشيف'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPageA()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/bike.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdPageB()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(20.0),
                child: Image.asset(
                  'assets/images/car.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdPageA extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الدراجات النارية'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter numbers only',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int number = int.tryParse(_controller.text) ?? 0;
                  String notebook = findNotebook(number);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Result'),
                        content: Text(' $notebook'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String findNotebook(int number) {
    Map<String, List<int>> notebooks = {
      'أرشيف 1': [1, 39500],
      'أرشيف 2': [39501, 42000],
      // Add more notebooks if needed
    };
    for (var notebook in notebooks.entries) {
      if (number >= notebook.value[0] && number <= notebook.value[1]) {
        return notebook.key;
      }
    }
    return 'مفقود'; // Return a default value if the number doesn't belong to any notebook
  }
}

class ThirdPageB extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('السيارات الخاصة'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter numbers only',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int number = int.tryParse(_controller.text) ?? 0;
                  String notebook = findNotebook(number);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Result'),
                        content: Text(' $notebook'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Search'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String findNotebook(int number) {
    Map<String, List<int>> notebooks = {
      'أرشيف 3': [1, 76346],
      'أرشيف 1': [76347, 183055],
      'أرشيف 2': [183056, 265521],
      'أرشيف 1 حارة الدراجات نارية': [265522,284132 ],
      'أرشيف  1': [284133,304718 ],
      'أرشيف3': [304719,308000],
      // Add more notebooks if needed
    };
    for (var notebook in notebooks.entries) {
      if (number >= notebook.value[0] && number <= notebook.value[1]) {
        return notebook.key;
      }
    }
    return 'Not found'; // Return a default value if the number doesn't belong to any notebook
  }
}