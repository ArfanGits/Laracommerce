<?php

namespace Database\Factories;

use App\Models\Product;

use Illuminate\Database\Eloquent\Factories\Factory;

use illuminate\Support\Str;


class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */

     protected $model = Product::class;
    public function definition()
    {
        $product_title = $this->faker->unique()->words($nb=4,$asText=true);
        $slug = Str::slug($product_title);
        return [
            'title'=>$product_title,
            'slug'=>$slug,
            'short_description'=>$this->faker->text(200),
            'description'=>$this->faker->text(500),
            'regular_price'=>$this->faker->numberBetween(100,500),
            'quantity'=>$this->faker->numberBetween(100,200),
            'image'=>'digital_'.$this->faker->unique()->numberBetween(1,30).'.jpg',
            'category_id'=>$this->faker->numberBetween(1,5)
        ];
    }
}
