import 'package:flutter/material.dart';
import 'package:latihan/recipe.dart';
import 'package:latihan/recipe_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Masakan Jawa Timur',
      theme: ThemeData(        
        primaryColor: Colors.white,      
      ),
      home: const MyHomePage(title: 'Resep Masakan Jawa Timur'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text( widget.title,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins', // Ubah warna teks judul menjadi putih
          fontWeight: FontWeight.w600, 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 78, 8),
      ),
      body: SafeArea(       
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    }
                  )
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          }
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe){
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image(image: AssetImage(recipe.imageUrl)),
          const SizedBox(
            height: 14.0,
          ),
          Text(
            recipe.label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins',
            )
          )
        ],
      ),
    )
  );
}
