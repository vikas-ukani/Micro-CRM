<?php

namespace App\Traits;


trait ImageUploadTrait
{


    public function uploadImage($file, $path = 'app')
    {
        return  $file->store($path, 'public');
    }
}
