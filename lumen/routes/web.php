<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TeamController;
/** @var \Laravel\Lumen\Routing\Router $router */

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET,HEAD,PUT,POST,DELETE,PATCH,OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, X-Auth-Token, Origin, Authorization');
Route::options('/{any:.*}', [function (){ 
   return response(['status' => 'success']); 
  }
 ]
);

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

Route::get('/', function () {
    echo "<h1>Tattoo Artists</h1>";
});

$router->get('Team', [TeamController::class, 'showAllTeams']);
$router->get('Team/{id}', [TeamController::class, 'showOneTeam']);
$router->post('Team', [TeamController::class, 'createTeam']);
$router->put('Team/{id}', [TeamController::class, 'updateTeam']);
$router->delete('Team/{id}', [TeamController::class, 'deleteTeam']);
