<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Partner extends Model
{
    public function getPhotoAttribute($image)
    {
        if (!empty($image)) {
            return asset('public/uploads/partners') . '/' . $image;
        }
        return "";
    }
}
