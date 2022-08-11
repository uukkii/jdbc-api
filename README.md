### Домашнее задание к занятию 8.3: JDBC API, JdbcTemplate, NamedParametersJdbcTemplate
## Задача DAO слой

**v. 1.0**

Задание реализовано.

К проекту подключены необходимые зависимости: `spring-boot-starter-jdbc`, 
`spring-boot-starter-web`, а также драйвер `mysql-connector-java`.

Приложение имеет следующую структуру:
- Класс **JdbcApiApplication.java** является точной входа в программу;
- Класс **Service.java** пакета `ru.netology.jdbcapi.service` содержит в себе 
аннотацию сервиса приложения и метод получения названия товара через метод
 _getProductName(String name)_ класса **Repository**;
- Класс **Controller.java** пакета `ru.netology.jdbcapi.controller` содержит
в себе аннотацию контроллера, Get-маппинг по адресу `/products/fetch-product`
с телом ответа получающего параметр _**name**_ через метод класса **Service** _getProducts(String name)_;
- Класс **Repository.java** пакета `ru.netology.jdbcapi.repository` содержит
аннотацию репозитория, метод _read(String scriptFileName)_ для чтения скрипта поиска названия товара в БД
`script_product_search.sql`, а также метода _getProductName(String name)_, который получает из БД
запрашиваемое название продукта (поле **_name_**) с использованием нейминга параментра (**NamedParameterJdbcTemplate**).

- В `/src/main/resources` такденаходится файл настроек Spring с указанными параметрами запуска:
```
spring.datasource.url=jdbc:mysql://localhost:3306/mysql
spring.datasource.username=root
spring.datasource.password=mysql

spring.sql.init.mode=always
spring.sql.init.continue-on-error=true
```

- А также скрипт `scheme.sql`, создающий схему **netology** и таблицы **СUSTOMERS** и **ORDERS**.