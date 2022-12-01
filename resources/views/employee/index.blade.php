@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                @if (Session::has('success'))
                    <p class="alert alert-success">{{ Session::get('success') }}</p>
                @endif

                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <b>{{ __('Employees') }} </b>
                        <b><a href="{{ route('employee.create') }}">Add New</a></b>
                    </div>


                    <div class="card-body">
                        @if (count($employees) == 0)
                            <div>No Employees found.! Please a create <a href="{{ route('employee.create') }}">new
                                    employee</a></div>
                        @else
                            <div class="table-responsive">
                                <table class="table table-hover align-items-center">
                                    <tr>
                                        <th>#</th>
                                        <th>First name</th>
                                        <th>Last name</th>
                                        <th>Company</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th class="text-center">Actions</th>
                                    </tr>
                                    </thead>

                                    <tbody>
                                        @foreach ($employees as $employee)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $employee->first_name ?? '-' }}</td>
                                                <td>{{ $employee->last_name ?? '-' }}</td>
                                                <td>
                                                    <div class="d-flex flex-column">
                                                        <a
                                                            href="{{ route('company.show', ['company' => $employee->company->id]) }}"><b
                                                                class="text-primary text-decoration-underline ">{{ $employee->company->name ?? '-' }}</b></a>
                                                        <span
                                                            class="text-muted">{{ $employee->company->email ?? '-' }}</span>
                                                    </div>
                                                </td>
                                                <td>{{ $employee->email ?? '-' }}</td>
                                                <td>{{ $employee->phone ?? '-' }}</td>
                                                <td>
                                                    <div class="d-flex gap-1">
                                                        {{-- <div class="btn-group btn-group-sm" role="group"> --}}
                                                        <a href="{{ route('employee.show', ['employee' => $employee]) }}"
                                                            class="btn btn-info btn-sm">Show</a>
                                                        <a href="{{ route('employee.edit', ['employee' => $employee]) }}"
                                                            class="btn btn-primary btn-sm">Edit</a>
                                                        <form method="post"
                                                            action="{{ route('employee.show', ['employee' => $employee]) }}">
                                                            @method('delete')
                                                            @csrf
                                                            <button
                                                                type="submit"class="btn btn-danger btn-sm">Delete</button>
                                                        </form>
                                                        {{-- </div> --}}
                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                                {!! $employees->links() !!}
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
