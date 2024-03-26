import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget{
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailState createState(){
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail>{
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins', // Ubah warna teks judul menjadi putih
          fontWeight: FontWeight.w600, 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 78, 8),
      ),
      body: SafeArea(
            child: Column(
              children: [
               Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage(widget.recipe.imageUrl),
                      fit: BoxFit.cover, // Sesuaikan dengan kebutuhan Anda
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.recipe.label,
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600
                  ),
                ),
                const SizedBox(
                  height:  18,
                ),
               Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10.0),
                  child: Text(
                    widget.recipe.desk,
                    style: const TextStyle(
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height:  10,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10.0),
                      child: Text(
                        'Resep Masakan :',
                        style:  TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height:  10,
                ),
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(left: 30.0),
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredients = widget.recipe.ingredients[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          '${ingredients.quantity * _sliderVal} ${ingredients.measure} ${ingredients.name}',
                          style: const TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Slider(
                  min: 1,
                  max: 10,
                  divisions: 10,
                  label: '${_sliderVal*widget.recipe.servings} servings',
                  value: _sliderVal.toDouble(),
                  onChanged: (newValue){
                    setState((){
                      _sliderVal = newValue.round();
                    });
                  },
                  activeColor: Colors.green,
                  inactiveColor: Colors.black,
                ),
              ],
            ),
        ),
    );
  }
}