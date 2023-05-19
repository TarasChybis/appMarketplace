# appMarketplace

## Зміст

1. [Загальні дані](#1)</br>
2. [Стек технологій](#2)
3. [Додаткова документація](#3)
4. [Зборка репозиторію та локальний запуск](#4)
5. [Налаштування](#5)
6. [Наповнення бази даних](#6)
7. [Запуск](#7)
8. [Функціонал](#8)

## 1. Загальні дані <a id="1"></a>
**appMarketplace** - це веб-додаток за типом Buy-Sell eCommerce платформ на базі фреймворку Spring.

<img src="../app_css_flex/img/Main-page.png"/>
<!-- <img src="https://github.com/TarasChybis/webAppProject/blob/button-left/img/main_page.png"/> -->

## 2. Стек технологій <a id="2"></a>
+ **HTML, CSS** адаптивна (кросплатформена і кросбраузерна) верстка.
  
+ **Flexbox** - Модуль макету гнучкого контейнера Flexbox, що дозволяє зробити адаптивне розташування елементів додатку.
  
+ **SVG** - Зображання у форматі SVG краще підходять для адаптивного и «retina-ready» дизайну із-за їх маштабованості і відсутності погіршення якості. Крім того, вони підтримують анімацію, в той час як PNG — ні, а у всіх інших типів растрових файлів, що підтримують анімацію, таких як GIF, APNG і WebP, є свої проблеми.</b>
SVG (від англ. Scalable Vector Graphics — масштабована векторна графіка) — мова розмітки масштабованої векторної графіки, створена Консорціумом Всесвітньої Павутини (W3C) і входить до підмножини розширюваної мови розмітки XML, призначена для опису двовимірної векторної та змішаної векторно/растрової графіки у форматі XML. Підтримує як нерухому, так і анімовану інтерактивну графіку або, в інших термінах, декларативну та скриптову.</b>
Поняття Retina Ready виникло з того моменту, як у продажу з'являлися пристрої з висококонтрастними великою щільністю пікселів Retina дисплеями.

+ **Maven** - система збирання проектів та задоволення залежностей.

+ **JAVA** - об'єктно-орієнтована серверна мова програмування.

+ **Spring Boot** - фреймворк JAVA.

+ **Spring WEB** - фреймворк JAVA з тулами для веб розробок.

+ **Spring MVC** - фреймворк забезпечує архітектуру паттерна Model - View - 
Controlle.

+ **Spring Data JPA** - фреймворк JAVA для роботи з базою данних.

+ **Hibernate** - фреймворк JAVA для роботи з базою данних.

+ **Spring Security** - 

+ **Apache Tomcat** - локальний веб-сервер.

+ **Apache Freemarker** - шаблонізатор для відображення динамічних данних з сервера на фронтендє.

+ **SQL** - 

+ **MySQL** - 

+ **JDBC** - 

+ **Java Mail Sender** - 

+ **Lombok** - бібліотека, яка за нас прописує всі геттери і сеттери, конструктори за замовчуванням, конструктори з параметрами.


## 3. Додаткова документація <a id="3"></a>
+ <a href="https://start.spring.io/">Spring initializr</a><br>
   `+` Project - Maven<br>
   `+` Lenguage - Java 11<br>
   `+` Spring Boot - 3.0.6<br>
   `+` Packaging - Jar<br>
   `+` Local Web Server - Apache Tomcat<br>
   Dependencies:<br>
   `+` Spring WEB<br>
   `+` Spring Data JPA<br>
   `+` Apache Freemarker<br>
   `+` MySQL Driver<br>
   `+` Spring Security<br>
   `+` Java Mail Sender<br>
+ <a href="https://www.youtube.com/watch?v=aCyvybo8ko8">Spring Boot. Разрабатываем веб-приложение с нуля. Подключаем приложение к базе данных</a>
+ <a href="https://learn.microsoft.com/ru-ru/contribute/how-to-write-links#bookmark-links">Схема взаємодії з користувачем</a>

<p>Проект запущено на Heroku (посилання).</b>
Використовується база данних SQL.</p>

## 4. Зборка репозиторію та локальний запуск <a id="4"></a>
Виконайте в консолі:
```
git clone https://github.com/TarasChybis/...
```
## 5. Налаштування <a id="5"></a>
Створіть файл .env і додайте туди наступні налаштування:
```
BOT_API_KEY = "Апі ключ, який ви отримали у BotFather"

PROXY_URL = socks5h://ВАШ_ПРОКСІ:1080
PROXY_USERNAME = ЛОГІН
PROXY_PASSWORD = ПАРОЛЬ

DATABASE_URL = "Посилання на вашу базу даних"
```
## 6. Наповнення бази даних <a id="6"></a>
В файлі application.properties прописати
```
# suppress inspection "UnusedProperty" for whole file
spring.datasource.url=jdbc:mysql://localhost:3306/app_marketplace
spring.datasource.username=root
spring.datasource.password=${ваш пароль до бази даних}
spring.jpa.hibernate.ddl-auto-update
spring.jpa.show-sql=true
```

## 7. Запуск <a id="7"></a>
1`)` Додаємо в файлі pom.xml:
```
<properties>
	<java.version>11</java.version>
	<maven.compiler.sourse>11</maven.compiler.sourse>
	<maven.compiler.target>11</maven.compiler.target>
</properties>
```
2`)` Перезавантажити налаштування примусово. Робимо правою кнопкою миши на pom.xml -> Maven -> Reload project<br>
3`)` В файлі pom.xml додаємо lombok:
```
<dependency>
	<groupId>org.projectlombok</groupId>
	<artifactId>lombok</artifactId>
</dependency>
```
Ctrl+Alt+L - форматуємо код в правильний вигляд. Оновлюємо.<br>
**Lombok** - бібліотека, яка за нас прописує всі геттери і сеттери, конструктори за замовчуванням, конструктори з параметрами.

## 8. Функціонал <a id="8"></a>
[Модель товара](#8.1)</br>
[Перегляд списку всіх товарів](#8.2)</br>
[Додавання товара](#8.3)</br>
[Перегляд докладного опису товара](#8.4)</br>
[Видалення товара](#8.5)</br>


Модель товара:<a id="8.1"></a>
```
public class Product {
   private long id;
   private String title;
   private String description;
   private double price;
   private String city;
   private String author;
}

Конструктор
Методи Get і Set
Перевизначення методів equals(), hashCode(), toString()
```
```
public class ProductService {
    
   private List<Product> products = new ArrayList<>();
   private long ID = 0;
    
   {
      products.add(new Product(++ID, "PlayStation 5", "Simple description", 50000.00, "Kyiv", "Piter"));
      products.add(new Product(++ID, "iPhone 14", "Simple description", 60000.00, "Lviv", "Patric"));
   }

}
```

Перегляд списку всіх товарів:<a id="8.2"></a>
```
product.ftlh
<html>
   <body>
      <h4>Товари зі всієї України</h4>
      <#list products as product>
         <div>
            <p><b>${product.title}</b> ${product.price} UAH | <a href="/product/${product.id}">Докладно</a></p>
         </div>
      </#list>
   </body>
</html>
```
```
public class ProductController {
   
   private final ProductService productService;

   @GetMapping("/")
   public String products(Model model) {
      model.addAttribute("products", productService.listProducts());
      return "products";
   }
   
}
```
```
public class ProductService {
   
   public List<Product> listProducts() {
      return products;
   }

}
```

Додавання товара:<a id="8.3"></a>
```
product.ftlh
<html>
   <body>
      <h3>Створити новий товар</h3>
      <form action="/product/create" method="post">
         Назва оголошення: <input type="text" name="title"/><br><br>
         Опис оголошення: <input type="text" name="description"/><br><br>
         Ціна: <input type="number" name="price"/><br><br>
         Місто: <input type="text" name="city"/><br><br>
         Автор: <input type="text" name="author"/><br><br>
         <input type="submit" value="Додати товар"/>
      </form>
   </body>
</html>
```
```
public class ProductController {
   
   private final ProductService productService;

   @PostMapping("/product/create")
   public String createProduct(Product product) {
      productService.saveProduct(product);
      return "redirect:/";
   }
   
}
```
```
public class ProductService {
   
   public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

}
```

Перегляд докладного опису товара:<a id="8.4"></a>
```
product.ftlh
<html>
   <body>
      <h4>Товари зі всієї України</h4>
      <#list products as product>
         <div>
            <p><b>${product.title}</b> ${product.price} UAH | <a href="/product/${product.id}">Докладно</a></p>
         </div>
      </#list>
   </body>
</html>
```
```
product-info.ftlh
<html>
   <body>
      <h4>Докладна інформація о товарі</h4>
      <b>Назва товару: </b>${product.title}<br>
      <b>Опис товару: </b>${product.description}<br>
      <b>Ціна: </b>${product.price}<br>
      <b>Місто: </b>${product.city}<br>
      <b>Автор: </b>${product.author}<br>
   </body>
</html>
```
```
public class ProductController {
   
   private final ProductService productService;

   @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id, Model model) {
        model.addAttribute("product", productService.getProductById(id));
        return "product-info";
    }
   
}
```
```
public class ProductService {
   
   public Product getProductById(Long id) {
      for (Product product : products)
         if (product.getId() == id) {
            return product;
         }
      return null;
   }

}
```

Видалення товара:<a id="8.5"></a>
```
product-info.ftlh
<html>
   <body>
      <form action="/product/delete/${product.id}" method="post">
         <input type="submit" value="Видалити товар"/>
      </form>
   </body>
</html>
```
```
public class ProductController {
   
   private final ProductService productService;

   @PostMapping("/product/delete/{id}")
   public String deleteProduct(@PathVariable Long id) {
      productService.deleteProduct(id);
      return "redirect:/";
   }
   
}
```
```
public class ProductService {
   
   public void deleteProduct(Long id) {
      products.removeIf(product -> product.getId() == id);
   }

}
```
