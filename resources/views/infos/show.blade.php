@extends('infos.layout')

@section('content')
    <div>
        <div>
            <div>
                <h2> Show User Info</h2>
            </div>
            <div>
                <a class="mybutton" href="{{ route('infos.index') }}"><span class="mybutton myspan">Back</span> </a>
            </div>
        </div>
    </div>
    <table>
        <tr>
            <td> <strong>ID:</strong></td>
            <td>{{ $info['id'] }}</td>
        </tr>
        <tr>
            <td><strong>First Name:</strong></td>
            <td>{{ $info['First_Name'] }}</td>
        </tr>
        <tr>
            <td><strong>Last Name:</strong></td>
            <td> {{ $info['Last_Name'] }}</td>
        </tr>
        <tr>
            <td><strong>Email:</strong></td>
            <td> {{ $info['Email'] }}</td>
        </tr>
        <tr>
            <td><strong>Phone Number:</strong></td>
            <td>{{ $info['Phone_Number'] }}</td>
        </tr>
    </table>
@endsection
