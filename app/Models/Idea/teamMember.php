<?php

namespace App\Models\Idea;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class teamMember extends Model
{
    protected $fillable = [
        'idea_id','leader_id', 'member_id'
    ];
    use HasFactory;

    public function idea()
    {
        return $this->belongsTo(Idea::class);
    }

    public function member()
    {
        return $this->belongsTo(User::class, 'member_id');
    }

    public function leader()
    {
        return $this->belongsTo(User::class, 'leader_id');
    }
}

