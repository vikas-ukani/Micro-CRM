<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'email',
        'logo',
        'website',
    ];



    /**
     * Company has many employees
     *
     * @return void
     */
    public function employees()
    {
        return $this->hasMany(Employee::class, 'company_id', 'id');
    }

    public function totalEmployee()
    {
        return $this->hasMany(Employee::class, 'company_id', 'id')->count();
    }
}
