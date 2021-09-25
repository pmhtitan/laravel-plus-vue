<?php

namespace Database\Seeders;
use App\Models\User;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // Factory model user, inserta en este caso 1 usuario nuevo. Viene definido con laravel
         \App\Models\User::factory(1)->create();

        // Aqui usamos una tabla Seeder creada por nosotros, donde hemos especificado un run()
        $this->call(UserTableSeeder::class);

        // Aqui creamos a pelo directamente el usuario, llamando al modelo, con lo que si que nos genera los Timestamps.
        User::create([
            'name' => 'Juan',
            'email' => 'juan@gmail.com',
            'password' => Hash::make('123123'),
        ]);
    }
}
