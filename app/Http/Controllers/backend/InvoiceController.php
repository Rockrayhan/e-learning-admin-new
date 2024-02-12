<?php

namespace App\Http\Controllers\backend;

use App\Http\Controllers\Controller;
use App\Models\Order;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;



class InvoiceController extends Controller
{
    public function generate_pdf($id)
    {        
        $orders = Order::all()->where('id', $id);
        // $data = [
        //     'title' => "Invoice of PESTKIT",
        //     'date' => date('m/d/Y'),
        //     'orders' => $orders
        // ];

        // dd($orders);

        $pdf = Pdf::loadView('frontend.invoice', compact('orders'));
        return $pdf->stream('invoice');
    }
}
