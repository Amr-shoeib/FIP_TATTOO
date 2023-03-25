<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Route;
use Illuminate\Http\Request;
use App\Models\Team;

class TeamController extends Controller
{
    public function showAllTeams()
    {
        $teams = Team::all();
        return response()->json($teams);
    }

    public function showOneTeam($id)
    {
        $team = Team::find($id);
        if ($team) {
            return response()->json($team);
        } else {
            return response()->json(['error' => 'Team not found'], 404);
        }
    }

    public function createTeam(Request $request)
    {
        $team = Team::create($request->all());
        return response()->json($team, 201);
    }

    public function updateTeam(Request $request, $id)
    {
        $team = Team::findOrFail($id);
        $team->update($request->all());
        return response()->json($team, 200);
    }

    public function deleteTeam($id)
    {
        $team = Team::findOrFail($id);
        $team->delete();
        return response('Deleted successfully', 200);
    }
}
