<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class InstructorController extends Controller
{
    public function index(){
        return view('backend.instructor.login');
    }


    public function login(Request $request ){
        // dd($request->all()) ;
        if(Auth::guard('instructor')->attempt(['email'=>$request->email,
        "password"=>$request->password])){
            return redirect()->route('instructor.dashboard');
        } else {
            return redirect()->route('instructor_login_form');
        }
    }


    public function dashboard(){
        return view('backend.instructor.dashboard');
    }


    public function destroy (Request $request)
    {
        
        Auth::guard('instructor')->logout();
        

        // $request->session()->invalidate();

        // $request->session()->regenerateToken();

        return redirect('instructor/login');
    }
}
