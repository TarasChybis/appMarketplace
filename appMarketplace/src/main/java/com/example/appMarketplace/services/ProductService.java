package com.example.appMarketplace.services;

import com.example.appMarketplace.models.Product;
import org.springframework.stereotype.Service;
import org.yaml.snakeyaml.events.Event;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;
    {
        products.add(new Product(++ID, "PlayStation 5", "Simple description", 50000.00, "Kyiv", "Piter"));
        products.add(new Product(++ID, "iPhone 14", "Simple description", 60000.00, "Lviv", "Patric"));
    }

    public List<Product> listProducts() {
        return products;
    }

    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId() == id);
    }

    public Product getProductById(Long id) {
        for (Product product : products)
            if (product.getId() == id) {
                return product;
            }
        return null;
    }
}
