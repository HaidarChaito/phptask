<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Info>
 */
class InfoFactory extends Factory
{

    public function definition()
    {
        return [
            //
            'First_Name' => fake()->firstName(),
            'Last_Name' => fake()->lastName(),
            'Email' => fake()->unique()->email(),
            'Phone_Number' => fake()->unique()->numberBetween(),
        ];
    }
}
