class Food {
  const Food(
    this.name,
    this.image,
    this.description,
    this.price,
  );
  final String name;
  final String image;
  final String description;
  final num price;
}

const meals = [
  Food('Pasta', 'images/pass.jpg', 'Taste the Italian Pizza', 250),
  Food('Margherita Pizza', 'images/pizz.jpg','Pizza topped with ceese and herbs', 300),
  Food('Burger', 'images/bur.jpg','Veg burger with crispy pattice', 200),
  Food('Biryani', 'images/hydbiryani.jpg','Hyderabadi chicken biryani', 400),
];
