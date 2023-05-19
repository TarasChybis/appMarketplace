package com.example.appMarketplace.repositories;

import com.example.appMarketplace.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public abstract class ProductRepository implements JpaRepository<Product, Long> {
    List<Product> findByTitle() {
        return findByTitle(null);
    }

    public abstract List<Product> findByTitle(String title);
}
