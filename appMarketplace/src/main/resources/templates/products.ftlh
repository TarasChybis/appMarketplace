<!DOCTYPE html>
<html>
    <head>
        <title>addMarketplace</title>
    </head>
    <body>
        <h1>appMarketplace</h1><hr>
        <h4>Товари зі всієї України</h4>
        <form action="/" method="get">
            Пошук по назві оголошення: <input type="text" name="title"/><br><br>
            <input type="submit" value="Пошук"/>
        </form>
        <#list products as product>
            <div>
                <p><b>${product.title}</b> ${product.price} UAH | <a href="/product/${product.id}">Докладно</a></p>
            </div>
        </#list>
        <hr>
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