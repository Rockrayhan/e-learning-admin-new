<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .invoice-area {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        .invoice-header {
            text-align: center;
            margin-bottom: 20px;
        }
        .invoice-title {
            font-size: 24px;
            margin: 0;
        }
        .invoice-details {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .invoice-details-flex {
            display: flex;
            justify-content: space-between;
        }
        .invoice-single-details {
            flex: 1;
            margin-right: 20px;
        }
        .invoice-details-title {
            font-size: 20px;
            margin-bottom: 10px;
        }
        .details-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }
        .details-list li {
            margin-bottom: 5px;
        }
        footer {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<!-- Invoice area Starts -->
<div class="invoice-area">
    <div class="invoice-wrapper">
        <div class="invoice-header">
            <h1 class="invoice-title">Students Invoice</h1>
        </div>
        <div class="invoice-details">
            <div class="invoice-details-flex">
                <div class="invoice-single-details">
                    @foreach($orders as $item)
                    <h2 class="invoice-details-title">Ship To: {{ $item['student_name'] }}</h2>
                    <ul class="details-list">
                        <li>{{ $item['email'] }}</li>
                        <li>{{ $item['product_name'] }}</li>
                    </ul>
                    @endforeach
                </div>
            </div>
        </div>
        <footer>
            <h3>&copy; {{ date('Y') }} Your Company Name</h3>
        </footer>
    </div>
</div>
<!-- Invoice area end -->

</body>
</html>
