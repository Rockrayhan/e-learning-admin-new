<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
            DB::table('products')->insert([
            'name' => "Hand sanitizer",
            'description' => 'This is product description',
            'image' =>  'images/no_photo.jpg',
            'price' =>'120',
            'category_id' =>'1',
            'manufacturer_id' =>'1',
            ]);
            DB::table('products')->insert([
            'name' => "Plastic face shield",
            'description' => 'This is product description',
            'image' =>  'images/no_photo.jpg',
            'price' =>'130',
            'category_id' =>'1',
            'manufacturer_id' =>'1',
            ]);
            DB::table('products')->insert([
            'name' => "Glass face mask",
            'description' => 'This is product description',
            'image' =>  'images/no_photo.jpg',
            'price' =>'140',
            'category_id' =>'2',
            'manufacturer_id' =>'2',
            ]);
            DB::table('products')->insert([
            'name' => "Saftey mask",
            'description' => 'This is product description',
            'image' =>  'images/no_photo.jpg',
            'price' =>'150',
            'category_id' =>'2',
            'manufacturer_id' =>'2',
            ]);
            DB::table('products')->insert([
            'name' => "Plastic face shield",
            'description' => 'This is product description',
            'image' =>  'images/no_photo.jpg',
            'price' =>'140',
            'category_id' =>'3',
            'manufacturer_id' =>'3',
            ]);
            DB::table('products')->insert([
            'name' => "N95 face mask",
            'description' => 'This is product description',
            'image' =>  'images/no_photo.jpg',
            'price' =>'150',
            'category_id' =>'3',
            'manufacturer_id' =>'3',
            ]);
            DB::table('products')->insert([
            'name' => "Oxygen mask",
            'description' => 'This is product description',
            'image' =>  'images/no_photo.jpg',
            'price' =>'140',
            'category_id' =>'3',
            'manufacturer_id' =>'3',
            ]);
            DB::table('products')->insert([
            'name' => "Hand gloves",
            'description' => 'This is product description',
            'image' =>  'images/no_photo.jpg',
            'price' =>'150',
            'category_id' =>'3',
            'manufacturer_id' =>'3',
            ]);
    }
}
