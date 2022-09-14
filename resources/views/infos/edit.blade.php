@extends('infos.layout')

@section('content')
    <div>
        <div>
            <div>
                <h2>Edit User's Info</h2>
            </div>
            <div>
                <a class="mybutton" href="{{ route('infos.index') }}"><span style="margin-bottom:10px;margin-top:10px;"
                        class="mybutton myspan">
                        Back</span></a>
            </div>
        </div>
    </div>

    @if ($errors->any())
        <div>
            <strong>Error!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('infos.update', $info->id) }}" method="POST">
        @csrf
        @method('PUT')
        <table>
            <tr>
                <td>
                    <strong>First Name:</strong>
                </td>
                <td>
                    <input type="text" name="First_Name" value="{{ $info['First_Name'] }}" placeholder="First Name">
                </td>
            </tr>
            <tr>
                <td><strong>Last Name:</strong></td>
                <td> <input type="text" name="Last_Name" value="{{ $info['Last_Name'] }}" placeholder="Last Name">
                </td>
            </tr>
            <tr>
                <td><strong>Email:</strong></td>
                <td> <input type="email" name="Email" value="{{ $info['Email'] }}" placeholder="Email">
                </td>
            </tr>
            <tr>
                <td><strong>Phone Number:</strong></td>
                <td><input type="number" name="Phone_Number" value="{{ $info['Phone_Number'] }}"
                        placeholder="Phone Number"></td>
            </tr>

        </table>
        <button style="margin-left: 40%; margin-top: 10px;" class="mybutton" type="submit">Submit</button>

    </form>
@endsection
