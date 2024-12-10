<?php

namespace App\Controllers;

class Education extends BaseController
{
    public function index(): string
    {
        return view('education');
    }
}
