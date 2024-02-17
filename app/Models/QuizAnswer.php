<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuizAnswer extends Model
{
    use HasFactory;
    protected $table = 'quizanswers';
    protected $fillable = ['student_id', 'question_number','selected_option' ];
}
