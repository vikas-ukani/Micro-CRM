@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">

                {{-- <div class="alert alert-danger" role="alert">
                    <b>*</b> Error Message
                </div> --}}
                @if (Session::has('success'))
                    <p class="alert alert-success">{{ Session::get('success') }}</p>
                @endif

                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <b>{{ __('Companies') }} </b>
                        <b><a href="{{ route('company.create') }}">Add New</a></b>
                    </div>

                    <div class="card-body">
                        @if (count($companies) == 0)
                            <div>No Companies found.! Please a create <a href="{{ route('company.create') }}">new company</a>
                            </div>
                        @else
                            <div class="table-responsive">
                                <table class="table table-hover  align-items-center">
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Logo</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Number of employees</th>
                                            <th>Website</th>
                                            <th class="text-center">Actions</th>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($companies as $company)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>
                                                    <img src="{{ URL::asset('storage/' . $company->logo) }}"
                                                        alt="Comapny Logo" width="50" height="50" class="rounded">
                                                </td>
                                                <td>{{ $company->name ?? '-' }}</td>
                                                <td>{{ $company->email ?? '-' }}</td>
                                                <td>{{ $company->employees_count ?? '-' }}</td>
                                                <td>
                                                    <a href="{{ $company->website ?? '-' }}" target="_BLANK">{{ $company->website ?? '-' }}</a>
                                                </td>
                                                <td>
                                                    <div class="d-flex gap-1">
                                                        {{-- <div class="btn-group btn-group-sm" role="group"> --}}
                                                        <a href="{{ route('company.show', ['company' => $company]) }}"
                                                            class="btn btn-info btn-sm">Show</a>
                                                        <a href="{{ route('company.edit', ['company' => $company]) }}"
                                                            class="btn btn-primary btn-sm">Edit</a>
                                                        <form method="post"
                                                            action="{{ route('company.show', ['company' => $company]) }}">
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
                                {!! $companies->links() !!}
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
