<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;

    protected $fillable = ['title','description','long_description'];
    // below is tha opposite of the above. Just listing what you don't want to be fillable
    // protected $guarded = ['secret','password'];

    public function toggleComplete()
    {
        $this->completed = !$this->completed;
        $this->save();
    }

}
