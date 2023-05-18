<!DOCTYPE html>
<html>
    <head>
        <title>addMarketplace</title>
    </head>
    <body>
        <h1>appMarketplace</h1><hr>
        <h4>Докладна інформація о товарі</h4>
        <b>Назва товару: </b>${product.title}<br>
        <b>Опис товару: </b>${product.description}<br>
        <b>Ціна: </b>${product.price}<br>
        <b>Місто: </b>${product.city}<br>
        <b>Автор: </b>${product.author}<br>
        <hr>
        <form action="/product/delete/${product.id}" method="post">
            <input type="submit" value="Видалити товар"/>
        </form>
    </body>
</html>