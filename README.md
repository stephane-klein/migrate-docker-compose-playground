# gomigrate issue 95 playground

In this playground, I want to test [Postgres - add x-migrations-table-quoted url query option (#95)](https://github.com/golang-migrate/migrate/pull/533) Pull Request.

```sh
$ docker-compose pull
$ docker-compose up -d postgres
```

```sh
$ docker-compose --profile gomigrate run --rm gomigrate
```

```sh
$ docker-compose exec postgres psql -U postgres postgres
postgres=# select * from gomigrate.schema_migrations ;
 version | dirty 
---------+-------
       1 | f
(1 row)

postgres=# \q
```