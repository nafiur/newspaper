<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SiteSettingsController extends Controller
{
    public function SiteSettings()
    {

        return view('admin.site_settings.index');
    }
    public function SiteInfo()
    {

        return view('admin.site_settings.info');
    }

}