<?php

require_once('Tenancy.php');

use Tafhyseni\PhpMultiTenancy\Tenancy;

class TenancyOverride extends Tenancy
{
    public function generate(string $name = null, $tables = [], $withData = false, $toIgnore = true)
    {
        if (! $name) {
            $name = $this->_shuffle_name();
        }

        $query = 'CREATE DATABASE '.$name;

        // Create schema
        $run = mysqli_query($this->tenancy_connection, $query);

        // connect tenant
        $this->tenancy_connection->select_db($name);
        $this->tenancy_name = $name;

        // Copy a structure
        if (empty($tables)) {
            $tables = $this->get_tables();
        }

        if(!$toIgnore) {
            $tables = array_diff($this->get_tables(), $tables);
        }

        foreach ($tables as $table) {
            $this->copy_table_from_master($table, $withData);
        }

        $this->_close_connections();

        return $name;
    }
}
/** 
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
*/
/** 
 * $tenancy->generate methods take in 3 OR 4 parameters:
 * 
 * First        : Database Name that will be created, if NULL specified, a random name will be given based on DB connection
 * Second       : Array of tables that DB will have, if NULL specified, all tables will be replicated
 * Third        : Boolean value, TRUE will fill the tables with data, FALSE will leave the tables empty
 * 
 * Forth        : Boolen value, FALSE will use tables as ignored & hence all tables will be replicated except those tables specified in array, TRUE will simple ignore this condition
 * 
 * $name        : Return the DB created name in all cases.
 */

 /**
$name = $tenancy->generate(NULL, [], true);
$name = $tenancy->generate(NULL, ['tbl_1', 'tbl_3'], true);
$name = $tenancy->generate('my_tenancy_db', ['tbl_1'], false);
*/

// Overriding core logics

/**
$tenancy = new TenancyOverride(
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
$name = $tenancy->generate(NULL, ['tbl_1', 'tbl_3'], true, false);
var_dump($name);
*/

/**
 * Value & Reference
 */

// reference
function triggerReference(&$v)
{
    return $v .= '-x';
}

// value
function triggerValue($v)
{
    return $v;
}

$value = 'F974';

echo 'value : ' . triggerValue($value);      // value : F974
echo nl2br("\n");
echo $value;        // F974
echo nl2br("\n");
echo nl2br("\n");

echo 'reference : ' . triggerReference($value);  // reference : F974-x      <-- $value was modified here..
echo nl2br("\n");
echo $value;        // F974-x
echo nl2br("\n");
echo nl2br("\n");

echo 'value : ' . triggerValue($value);      // value : F974-x      <-- $value does not equal "F974"
echo nl2br("\n");
echo $value;        // F974-x
echo nl2br("\n");
echo nl2br("\n");

echo 'reference : ' . triggerReference($value);  // reference : F974-x-x
echo nl2br("\n");
echo $value;        // F974-x-x
echo nl2br("\n");
echo nl2br("\n");
