package merjan.develop.product;

import merjan.develop.product.entity.Category;
import merjan.develop.product.entity.Product;
import merjan.develop.product.repository.ProductRepository;
import org.assertj.core.api.Assertions;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Bean;

import java.util.Date;
import java.util.List;

@DataJpaTest
public class ProductRepositoryMockTest {

    @Autowired
    private ProductRepository productRepository;

    @Test
    public void whenFindByCategory_thenReturnListProduct(){

        Product product01 = Product.builder()
                .name("computer")
                .category(Category.builder().id(1L).build())
                .description("")
                .stock(Double.parseDouble("10.12"))
                .price(Double.parseDouble("33.99"))
                .status("CREATED")
                .createAt(new Date()).build();

        System.out.println("Porque estoy fallando");
        System.out.println("Precio del producto: " + product01.getPrice());

        productRepository.save(product01);

        List<Product> founds = productRepository.findByCategory(product01.getCategory());

        Assertions.assertThat(founds.size()).isEqualTo(3);
    }
}
