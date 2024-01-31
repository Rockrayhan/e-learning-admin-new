<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function login(){
        return view('admin.login');
    }

    public function store(Request $request)
    {
        $user = $request->all();
        // dd($user); //dump and die

        if( Auth::guard('admin')->attempt(['email'=>$user['email'], 'password'=>$user['password']])){
            return redirect()->route('admin.dashboard');
        } else {
            return view('admin.login')->with('msg', 'check data correctly');
        }
    }

    public function dashboard(){
        return view('admin.dashboard');
    }
}
