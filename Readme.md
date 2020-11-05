# Resource

- https://github.com/tafhyseni/php-multi-tenancy

# Notes

- `tenancy.sql` is the DB that will be replicated automatically
- `$tenancy->generate` methods take in 3 parameters:
- - **First** Database Name that will be created, if NULL specified, a random name will be given based on DB connection
- - **Second** Array of tables that DB will have, if NULL specified, all tables will be replicated
- - **Third** Boolean value, TRUE will fill the tables with data, FALSE will leave the tables empty
- `$name` Return the DB created name in all cases.
 