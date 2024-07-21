<?php

namespace Database\Seeders;

use App\Models\Barang;
use App\Models\User;
use App\Models\Role;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(20)->create();

        Barang::factory(20)->create();

        Role::create([
            'name' => 'admin'
        ]);
        Role::create([
            'name' => 'non-admin'
        ]);
    }
}
