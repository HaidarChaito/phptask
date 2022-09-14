@extends('infos.layout')

@section('content')
    <div>
        <div>
            <div>
                <h2>Add New User</h2>
            </div>
            <div>
                <a class="mybutton" href="{{ route('infos.index') }}"><span class="mybutton myspan">Back</span> </a>
            </div>
        </div>
    </div>

    @if ($errors->any())
        <div class="err">
            <strong>Error!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('infos.store') }}" method="POST">
        @csrf

        <table>
            <tr>
                <td><strong>First Name:</strong></td>
                <td><input type="text" name="First_Name" placeholder="First Name"></td>
            </tr>
            <tr>
                <td><strong>Last Name:</strong></td>
                <td><input type="text" name="Last_Name" placeholder="Last Name"></td>
            </tr>
            <tr>
                <td><strong>Email:</strong></td>
                <td><input type="email" name="Email" placeholder="Email"></td>
            </tr>
            <tr>
                <td><strong>Phone Number:</strong></td>
                <td><input type="number" name="Phone_Number" placeholder="Phone Number"></td>
            </tr>
        </table>
        <button style="margin-left: 40%; margin-top: 10px;" class="mybutton" type="submit">Submit</button>


    </form>
@endsection
