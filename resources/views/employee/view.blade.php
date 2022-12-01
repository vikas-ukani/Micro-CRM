@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <b>{{ __('Employee Details') }} </b>
                        <b><a href="{{ route('employee.index') }}">Back to list</a></b>
                    </div>

                    <div class="card-body pt-2">
                        <form action="{{ route('employee.store') }}" method="POST" enctype="multipart/form-data">
                            <div class="mt-4">
                                <table class="table">
                                    <tr class="text-capitalize">
                                        <td>employee first Name</td>
                                        <th> {{ $employee->first_name }} </th>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>employee last Name</td>
                                        <th> {{ $employee->last_name }} </th>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>employee company details</td>
                                        <th>
                                            <div class="d-flex flex-column">
                                                <b class="text-primary text-decoration-underline ">
                                                    {{ $employee->company->name ?? '-' }}
                                                </b>
                                                <span class="text-muted">{{ $employee->company->email ?? '-' }}</span>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr class="text-capitalize">
                                        <td>employee email</td>
                                        <th>{{ $employee->email }}</th>
                                    </tr>

                                    <tr class="text-capitalize">
                                        <td>employee phone number</td>
                                        <th>{{ $employee->phone }}</th>
                                    </tr>

                                    <tr class="text-capitalize">
                                        <td>Created On</td>
                                        <th>{{ $employee->created_at }}</th>
                                    </tr>
                                </table>
                            </div>

                            <div class="mt-5 d-flex justify-content-between">
                                <a href="{{ route('employee.index') }}" class="btn btn-warning mt-2">Cancel</a>
                                <a href="{{ route('employee.edit', ['employee' => $employee]) }}"
                                    class="btn btn-success mt-2">Edit</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
