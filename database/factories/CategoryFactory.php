<?php

namespace Database\Factories;

use App\Models\Category;

use Illuminate\Database\Eloquent\Factories\Factory;

use illuminate\Support\Str;

class CategoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */

     protected $model = Category::class;

    public function definition()
    {
        $category_title = $this->faker->unique()->words($nb=2,$asText=true);
        $slug = Str::slug($category_title);
        return [
            
                'title'=>$category_title,
                'slug'=>$slug                
        ];
    }
}
