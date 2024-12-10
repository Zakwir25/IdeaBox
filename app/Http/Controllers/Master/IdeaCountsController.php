<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class IdeaCountsController extends Controller
{
    public function index(){
        $departments = DB::table('departments')->select('id','name')->get();
        return view('page.master.ideaCounts.index', compact('departments'));
    }

    public function getIdeaByDepartment(Request $request){

        $departmentId = $request->get('departmentId', '');

        $datas = DB::table('users')
        ->leftJoin('ideas','users.id', '=', 'ideas.user_id')
        ->where('users.department_id', $departmentId)
        ->select('users.name as name', DB::raw('COUNT(CASE WHEN status = "Published" THEN 1 END) as idea_count'))
        ->groupBy('users.id')
        ->get();

        return response()->json($datas);
    }
}
