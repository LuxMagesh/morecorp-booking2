<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);


              // Fake data for today
              Bookings::factory(6)->create([
                'date' => Carbon::today(),
            ]);
    
            // Fake data for yesterday
           Bookings::factory(6)->create([
                'date' => Carbon::yesterday(),
            ]);
    
            // Fake data for this week
            Bookings::factory(6)->create([
                        'date' => Carbon::now()->startOfWeek(),
                    ])->each(function ($post) {
                        $post->date = $post->date->addMinutes(rand(1, 1440 * 6));
                        $post->save();
                    });
    
            // Fake data for last week
            Bookings::factory(6)->create([
                        'date' => Carbon::now()->subWeek()->startOfWeek(),
                    ])->each(function ($post) {
                        $post->date = $post->date->addMinutes(rand(1, 1440 * 6));
                        $post->save();
                    });  
                    
            // Fake data for this month
            Bookings::factory(6)->create([
                'date' => Carbon::now()->startOfMonth(),
            ])->each(function ($post) {
                $post->date = $post->date->addMinutes(rand(1, 1440 * 30));
                $post->save();
            });
    
           // Fake data for last month
           Bookings::factory(6)->create([
                        'date' => Carbon::now()->subMonth()->startOfMonth(),
                    ])->each(function ($post) {
                        $post->date = $post->date->addMinutes(rand(1, 1440 * 30));
                        $post->save();
                    });
    
            // Fake data for this year
            Bookings::factory(6)->create([
                        'date' => Carbon::now()->startOfYear(),
                    ])->each(function ($post) {
                        $post->date = $post->date->addMinutes(rand(1, 1440 * 365));
                        $post->save();
                    });
    
            // Fake data for last year
            Bookings::factory(6)->create([
                        'date' => Carbon::now()->subYear()->startOfYear(),
                    ])->each(function ($post) {
                        $post->date = $post->date->addMinutes(rand(1, 1440 * 365));
                        $post->save();
                });        
    
    }
}
