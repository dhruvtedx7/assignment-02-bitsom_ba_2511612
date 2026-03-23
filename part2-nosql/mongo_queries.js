// OP1: insertMany() — insert all 3 documents

db.products.insertMany([
  {
    product_id: "P1001",
    name: "iPhone 14",
    category: "Electronics",
    price: 79999,
    specifications: {
      brand: "Apple",
      warranty: "1 year",
      battery: "3279mAh",
      voltage: "5V"
    },
    features: ["Face ID", "Dual Camera", "5G"]
  },
  {
    product_id: "P2001",
    name: "Men's Casual Shirt",
    category: "Clothing",
    price: 1499,
    details: {
      brand: "H&M",
      size: ["S", "M", "L", "XL"],
      material: "Cotton",
      fit: "Regular"
    },
    colors: ["Blue", "Black", "White"]
  },
  {
    product_id: "P3001",
    name: "Organic Milk",
    category: "Groceries",
    price: 60,
    nutrition: {
      calories: "150 kcal",
      fat: "8g",
      protein: "8g"
    },
    expiry_date: new Date("2025-01-10"),
    storage: "Keep refrigerated"
  }
]);


// OP2: find() — Electronics products with price > 20000

db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});


// OP3: find() — Groceries expiring before 2025-01-01

db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});


// OP4: updateOne() — add discount_percent

db.products.updateOne(
  { product_id: "P1001" },
  { $set: { discount_percent: 10 } }
);


// OP5: createIndex() — index on category

db.products.createIndex({ category: 1 });
