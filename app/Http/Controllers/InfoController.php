<?php

namespace App\Http\Controllers;

use App\Models\Info;
use Illuminate\Http\Request;

class InfoController extends Controller
{

    public function index()
    {
        $infos = Info::oldest()->paginate(5);

        return view('infos.index', compact('infos'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }


    public function create()
    {
        return view('infos.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'First_Name' => 'string:nullable',
            'Last_Name' => 'string:nullable',
            'Email' => 'email:rfc,dns',
            'Phone_Number' => 'numeric',
        ]);

        info::create($request->all());

        return redirect()->route('infos.index')
            ->with('success', 'Object created successfully.');
    }

    public function show(Info $info)
    {
        return view('infos.show', compact('info'));
    }

    public function edit(Info $info)
    {

        return view('infos.edit', compact('info'));
    }

    public function update(Request $request, Info $info)
    {
        $request->validate([
            'First_Name' => 'string:nullable',
            'Last_Name' => 'string:nullable',
            'Email' => 'email:rfc,dns',
            'Phone_Number' => 'numeric',
        ]);

        $info->update($request->all());

        return redirect()->route('infos.index')
            ->with('success', 'Object updated successfully');
    }

    public function destroy(Info $info)
    {
        $info->delete();

        return redirect()->route('infos.index')
            ->with('success', 'Object deleted successfully');
    }
}
