<php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Team;
use PHPUnit\Util\Json;


class TeamController extends Controller{

    public function showAllteam(){
   <!-- return team::all(): -->
   $team = Team::all();
   return $team;
}

public function showOneArtist($id){
    return response ()->json(Team::find($id));

}

}

