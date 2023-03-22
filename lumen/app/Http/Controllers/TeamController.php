<php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Team;



class TeamController extends Controller{

    public function showAllteam(){
   $team = Team::all();
   return response()->json($team);
}

public function showOneArtist($id){
    return response ()->json(Team::find($id));

}

}

