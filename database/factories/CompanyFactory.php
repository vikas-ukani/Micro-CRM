<?php

namespace Database\Factories;

use App\Models\Company;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;

class CompanyFactory extends Factory
{

    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Company::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $storagePath = public_path('/storage/app');
        // $storagePath = storage_path('/app/public/');
        // if (!Storage::exists($storagePath)) {
        //     // File::makeDirectory($storagePath, 0755, true);
        // }

        return [
            'name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            'logo' => 'app/default.jpeg', // Make if default image for fake company
            // 'logo' => $this->faker->image($storagePath, 100, 100, null, false),
            'website' => "http://" . strtolower($this->faker->firstName) . ".com",
        ];
    }
}
