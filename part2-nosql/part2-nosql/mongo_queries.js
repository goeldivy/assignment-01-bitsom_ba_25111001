// OP1:
db.products.insertMany([
  {
    product_id: "E001",
    name: "Laptop",
    category: "Electronics",
    price: 60000,
    specs: {
      brand: "Dell",
      warranty_years: 2,
      voltage: "220V"
    }
  },
  {
    product_id: "C001",
    name: "T-Shirt",
    category: "Clothing",
    price: 999,
    sizes: ["S", "M", "L", "XL"],
    material: "Cotton"
  },
  {
    product_id: "G001",
    name: "Milk",
    category: "Groceries",
    price: 60,
    expiry_date: new Date("2024-12-30"),
    nutrition: {
      calories: 150,
      fat: "5g"
    }
  }
]);

// OP2:
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3:
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});

// OP4:
db.products.updateOne(
  { product_id: "E001" },
  { $set: { discount_percent: 10 } }
);

// OP5:
db.products.createIndex({ category: 1 });

// Reason:
/// Improves query performance when filtering by category
