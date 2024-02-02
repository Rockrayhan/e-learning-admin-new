<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    
     /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $reviews = Review::all();
        return view('backend.reviews.index', compact('reviews')) ;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // $product = Product::all();
        return view('backend.reviews.create') ;
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data  = ['name' => $request->name,
                    'product_id'=>$request->cats 
    ];

        $model = new Review();
        if ( $model->create($data) ){
            return redirect('lesson')->with('msg' , 'Successfully lesson added');
        }
    }

    /**
     * Display the specified resource.
     */

     public function myReview()
     {
        $instrutor_id = Auth::guard('instructor')->user()->id;
        // $lesson = Lesson::where('instructor_id', $instrutor_id)->get();
         return view('backend.reviews.myreview', compact('lesson')) ;
     }


    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        // $data['cats'] = Category::find($id) ; 
        // return view('backend.category.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        // $category = Category::find($id);

        // $validate = $request->validate([
        //     'name' => 'required|min:4|max:255',
        //     // 'email' => 'email',
        // ] );

        // $data = [
        //     'name' => $request->name,
        // ];
        // // print_r($request);
        // $category->update($data);
        // return redirect('/category')->with('msg' , 'Your data has updated') ;
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy( $id)
    {
        $data = Review::find($id) ;
        $data->delete();
        return redirect('/review')->with('msg', 'Your data has been deleted');
    }
}
