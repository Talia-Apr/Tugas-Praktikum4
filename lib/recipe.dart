class Recipe{
  String label;
  String desk;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.desk, this.imageUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Gado-Gado', 
      'Gado-gado adalah makanan yang terdiri atas sayur-sayuran, kentang, tempe, tahu, telur rebus, dan lain-lain diberi bumbu sambal kacang dan sebagainya. Yang berasal dari Surabaya.',
      'image/gado.jpg',
      4,
      [
        Ingredient(100, 'gr', 'Kentang, Tahu, Tempe Kukus'),
        Ingredient(50, 'gr', 'Selada Hijau'),
        Ingredient(200, 'gr', 'Kacang Goreng Haluskan'),
      ]
    ),

    Recipe(
      'Onde-Onde', 
      'Onde-Onde merupakan jajanan pasar yang mempunyai bentuk bulat berwarna keemasan dan ditaburi biji wijen, biasanya Onde-Onde berisikan kacang hijau yang manis. Yang berasal dari Mojokerto.',
      'image/onde.jpg',
      10,
      [
        Ingredient(250, 'gr', 'Tepung ketan putih'),
        Ingredient(65, 'gr', 'Wijen'),
        Ingredient(75, 'gr', 'Kacang hijau haluskan'),
      ]
    ),

    Recipe(
      'Lontong Balap', 
      'Lontong balap adalah makanan khas Indonesia yang merupakan ciri khas kota Surabaya di Jawa Timur. Makanan ini terdiri dari lontong, taoge, tahu goreng, lentho, bawang goreng, kecap, dan sambal.',
      'image/lontong.jpg',
      5,
      [
        Ingredient(300, 'gr', 'Tauge'),
        Ingredient(1, 'ltr', 'Kaldu sapi'),
        Ingredient(5, 'bungkus', 'Lontong'),
      ]
    ),

    Recipe(
      'Wedang Jahe', 
      'Angsle atau wedang angsle adalah makanan khas Jawa Timur yang menyerupai kolak. Penjual angsle tradisional dulu berkeliling kampung hanya pada malam hari, karena angsle yang hangat pas disajikan saat malam hari atau saat hujan.',
      'image/wedang.PNG',
      3,
      [
        Ingredient(300, 'ml', 'Santan kelapa'),
        Ingredient(2, 'lbr', 'Daun pandan'),
        Ingredient(3, 'lbr', 'Roti Tawar'),
      ]
    ),

    Recipe(
      'Pecel Pincuk', 
      'Pecel pincuk adalah makanan yang terdiri atas sayuran rebus, seperti kacang panjang, bayam, taoge yang disiram dengan kuah sambal kacang dan sebagainya. Yang berasal dari Daerah Madiun.',
      'image/pecel.jpg',
      3,
      [
        Ingredient(250, 'gr', 'Bumbu Pecel jadi'),
        Ingredient(50, 'gr', 'Tauge'),
        Ingredient(1, 'ikat', 'Bayam'),
      ]
    ),

    Recipe(
      'Rawon', 
      'Rawon adalah masakan khas Indonesia yang berasal dari Ponorogo yang berupa sup daging berkuah hitam dengan campuran bumbu khas yang menggunakan kluwek yang sebenarnya mengandung racun jenis Sianida, Makanan ini telah berusia lebih dari 1.000 tahun.',
      'image/rawon.jpeg',
      15,
      [
        Ingredient(500, 'gr', 'Daging Sapi'),
        Ingredient(3, 'ltr', 'Air'),
        Ingredient(5, 'buah', 'Keluak geprek dan rendam isinya'),
      ]
    ),

    Recipe(
      'Rujak Cingur', 
      'Rujak Cingur merupakan makanan yang dilengkapi dengan cingur atau mulut sapi beserta sayuran yang di siram dengan kuah kacang serta petis udang. Yang berasal dari Surabaya.',
      'image/rujak.jpg',
      5,
      [
        Ingredient(50, 'gr', 'Cingur Sapi'),
        Ingredient(1, 'buah', 'Mentimun potong, Tahu putih Goreng'),
        Ingredient(200, 'ge', 'Bumbu Rujak jadi'),
      ]
    ),

    Recipe(
      'Sate Madura', 
      'Sate Madura adalah sate yang memiliki bumbu khas Madura. Sate Madura biasanya terbuat dari ayam. Madura selain terkenal sebagai pulau garam, juga terkenal dengan satenya. Sate madura sudah terkenal di seluruh Nusantara.',
      'image/sate.jpg',
      3,
      [
        Ingredient(300, 'gr', 'Bumbu Sate jadi'),
        Ingredient(250, 'gr', 'Daging Ayam'),
        Ingredient(3, 'buah', 'Lontong'),
      ]
    ),

    Recipe(
      'Soto Ayam', 
      'Soto Ayam khas kabupaten Lamongan, Jawa Timur, yang saat ini telah menyebar ke berbagai daerah di Indonesia. Soto lamongan dikenal sebagai salah satu soto paling gurih lantaran memiliki ciri khas taburan koya udang yang tidak dimiliki oleh soto lainnya.',
      'image/soto.jpg',
      7,
      [
        Ingredient(1, 'ekor', 'Ayam Kampung'),
        Ingredient(2, 'bungkus', 'Bumbu Soto Jadi'),
        Ingredient(1, 'ltr', 'Air'),
      ]
    ),

    Recipe(
      'Tahu Tek', 
      'Tahu tek adalah salah satu masakan khas Jawa Timur khususnya di Kota Surabaya. Tahu tek terdiri atas tahu goreng setengah matang dan lontong yang dipotong kecil-kecil dengan alat gunting dan garpu.',
      'image/tahutek.jpg',
      2,
      [
        Ingredient(2, 'buah', 'Tahu Putih Goreng'),
        Ingredient(2, 'buah', 'Lontong'),
        Ingredient(200, 'gr', 'Bumbu Tahu Tek'),
      ]
    ),

  ];
}

class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}