<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StudentController extends Controller
{
    public function index(){
        return view('backend.student.login');
    }


    public function login(Request $request ){
        // dd($request->all()) ;
        if(Auth::guard('student')->attempt(['email'=>$request->email,
        "password"=>$request->password])){
            return redirect('/');
        } else {
            return redirect()->route('student_login_form');
        }
    }

    public function myCourses()
    {
        $student_id = Auth::guard('student')->user()->id;
        $product = Order::where('student_id', $student_id)->get();
        return view('frontend.mycourses', compact('product'));
    }


    public function dashboard(){
        return view('backend.student.dashboard');
    }


    public function destroy (Request $request)
    {
        
        Auth::guard('student')->logout();
        

        // $request->session()->invalidate();

        // $request->session()->regenerateToken();

        return redirect('/');
    }
}
