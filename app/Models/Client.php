<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Client extends Model
{
    use Notifiable ;

    protected $guard = 'admin';
    protected $guarded = [];

    protected $fillable = [
        'name', 'membership_no ', 'national_no ', 'email', 'phone', 'password', 'photo', 'is_active',
        'jop', 'birth_date', 'register_date', 'type', 'parent_id'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    public function Client()
    {
        return $this->belongsTo(Client::class, 'parent_id');
    }

    public function Followers()
    {
        return $this->hasMany(Client::class, 'parent_id')->orderBy('id', 'asc');
    }

    public function Payments()
    {
        return $this->hasMany(ClientPayment::class, 'client_id');
    }

    public function Debts()
    {
        return $this->hasMany(ClientDebt::class, 'client_id');
    }

    public function Cards()
    {
        return $this->hasMany(ClientCard::class, 'client_id');
    }

    public function Notifications()
    {
        return $this->hasMany(ClientNotification::class, 'client_id');
    }

    public function getPhotoAttribute($image)
    {
        if (!empty($image)) {
            return asset('public/uploads/clients') . '/' . $image;
        }
        return "";
    }

}