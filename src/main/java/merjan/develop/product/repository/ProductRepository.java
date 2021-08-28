package merjan.develop.product.repository;

import merjan.develop.product.entity.Category;
import merjan.develop.product.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product,Long> {

    public List<Product> findByCategory(Category category);

}
