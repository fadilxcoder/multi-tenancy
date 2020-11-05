<?php

require_once('Tenancy.php');

use Tafhyseni\PhpMultiTenancy\Tenancy;

$tenancy = new Tenancy(
    array(
        'hostname' => '127.0.0.1',
        'username' => 'root',
        'password' => '',
        'database' => 'tenancy',
        'tenancy_hostname' => '127.0.0.1',
        'tenancy_username' => 'root',
        'tenancy_password' => ''
    )
);

/**
 * $tenancy->generate methods take in 3 parameters:
 * 
 * First        : Database Name that will be created, if NULL specified, a random name will be given based on DB connection
 * Second       : Array of tables that DB will have, if NULL specified, all tables will be replicated
 * Third        : Boolean value, TRUE will fill the tables with data, FALSE will leave the tables empty
 * 
 * $name        : Return the DB created name in all cases.
 */

 /*
$name = $tenancy->generate(NULL, []. true);
$name = $tenancy->generate(NULL, ['tbl_1', 'tbl_3'], true);
$name = $tenancy->generate('my_tenancy_db', ['tbl_1'], false);
var_dump($name);
*/