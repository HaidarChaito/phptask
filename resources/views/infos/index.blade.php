@extends('infos.layout')

@section('content')
    @if ($message = Session::get('success'))
        <div>
            <p>{{ $message }}</p>
        </div>
    @endif

    <table class="paleBlueRows">
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Action</th>
        </tr>

        @foreach ($infos as $info)
            <tr>
                <td>{{ $info->id }}</td>
                <td>{{ $info['First_Name'] }}</td>
                <td>{{ $info['Last_Name'] }}</td>
                <td>{{ $info['Email'] }}</td>
                <td>{{ $info['Phone_Number'] }}</td>
                <td>
                    <form action="{{ route('infos.destroy', $info->id) }}" method="POST">

                        <a href="{{ route('infos.show', $info->id) }}"><span class="mybutton myspan">Show</span></a>

                        <a href="{{ route('infos.edit', $info->id) }}"><span class="mybutton myspan">Edit</span></a>

                        @csrf
                        @method('DELETE')

                        <button class="mybutton" type="submit">Delete</button>
                    </form>
                </td>

            </tr>
        @endforeach
    </table>


    <table>
        <td>
            {!! $infos->links() !!}
        </td>
        <td>
            <a class="mybutton" href="{{ route('infos.create') }}"> <span class="mybutton myspan">Add</span></a>

        </td>
    </table>
@endsection
