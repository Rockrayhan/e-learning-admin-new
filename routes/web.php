<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\backend\InvoiceController;
use App\Http\Controllers\backend\OrderController;
use App\Http\Controllers\backend\QuizController;
use App\Http\Controllers\frontend\ProductController;
use App\Http\Controllers\frontend\HomeController;
use App\Http\Controllers\frontend\ProductDetailsController;
use App\Http\Controllers\InstructorController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\StudentController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

// frontend routes
Route::get('/', function () {
    return view('frontend.home');
});

Route::get('/shop', function () {
    return view('frontend.shop');
})->name('shop');

Route::get('/about', function () {
    return view('frontend.about');
})->name('about');

Route::get('/blog', function () {
    return view('frontend.blog');
})->name('blog');

Route::get('/contact', function () {
    return view('frontend.contact');
})->name('contact');



//frontend Orders
Route::get('orders', [OrderController::class, 'index']);

Route::get('orders/create', [OrderController::class, 'create'])
    ->name('orders');

Route::post('orders/store', [OrderController::class, 'store'])
    ->name('orders.store');

Route::get('orders/edit/{id}', [OrderController::class, 'edit'])
    ->name('orders.edit');

Route::post('orders/update/{id}', [OrderController::class, 'update'])
    ->name('orders.update');

Route::get('orders/delete/{id}', [OrderController::class, 'destroy'])
    ->name('orders.delete');

    Route::post('order/status/{id}', [OrderController::class, 'status']) 
->name('order.status');  



//cart 
Route::get('cart', [ProductController::class, 'cart'])->name('cart');
Route::get('add-to-cart/{id}', [ProductController::class, 'addToCart'])->name('add.to.cart');
Route::patch('update-cart', [ProductController::class, 'update'])->name('update.cart');
Route::delete('remove-from-cart', [ProductController::class, 'remove'])->name('remove.from.cart');





// frontend controllers
Route::get('/', [HomeController::class, 'index']);

Route::get('/product/details/{id}', [ProductDetailsController::class, 'index'])->name('product.details')->middleware('student');
;

Route::get('/dashboard', function () {
    return view('backend.dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});


// Route::prefix('admin')->group(function(){

Route::get('admin/login', [AdminController::class, 'index'])->name('admin_login_form');
Route::post('login/owner', [AdminController::class, 'login'])->name('admin.login');
Route::post('admin/logout', [AdminController::class, 'destroy'])->name('admin.logout');
Route::get('admin/dashboard', [AdminController::class, 'dashboard'])->name('admin.dashboard')->middleware('admin');


// });

// Route::prefix('instructor')->group(function(){

Route::get('instructor/login', [InstructorController::class, 'index'])->name('instructor_login_form');
Route::post('login/instructor', [InstructorController::class, 'login'])->name('instructor.login');
Route::post('instructor/logout', [InstructorController::class, 'destroy'])->name('instructor.logout');
Route::get('instructor/dashboard', [InstructorController::class, 'dashboard'])->name('instructor.dashboard')->middleware('instructor');


// });

// Route::prefix('student')->group(function(){

Route::get('student/login', [StudentController::class, 'index'])->name('student_login_form');
Route::get('student/register', [StudentController::class, 'create'])->name('student.register');
Route::post('student/store', [StudentController::class, 'store'])->name('student.store');
Route::post('login/student', [StudentController::class, 'login'])->name('student.login');
Route::post('student/logout', [StudentController::class, 'destroy'])->name('student.logout');
Route::get('student/dashboard', [StudentController::class, 'dashboard'])->name('student.dashboard')->middleware('student');
Route::get('/student/mycourses', [StudentController::class, 'myCourses'])->name('student.mycourses');



// });


// invoice 
Route::get('invoice',[InvoiceController::class,'generate_pdf']);
Route::get('invoice/{id}',[InvoiceController::class,'generate_pdf'])->name('invoiceperid');




// quiz 
Route::get('quiz', [QuizController::class, 'index'])->name('quiz');
Route::get('quiz/create', [QuizController::class, 'create'])->name('quiz.create');
Route::post('quiz/store', [QuizController::class, 'store'])->name('quiz.store');
Route::post('/submit-quiz', [QuizController::class, 'submitQuiz'])->name('quiz.submit');
// Route::get('product/edit/{id}', [ProductController::class, 'edit'])->name('product.edit');
// Route::post('product/update/{id}', [ProductController::class, 'update'])->name('product.update');
// Route::get('product/delete/{id}', [ProductController::class, 'destroy'])->name('product.delete');



require __DIR__ . '/auth.php';
