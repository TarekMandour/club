<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PostGallery extends Model
{
    public function getPhotoAttribute($image)
    {
        if (!empty($image)) {
            return asset('public/uploads/posts') . '/' . $image;
        }
        return "";
    }
}
