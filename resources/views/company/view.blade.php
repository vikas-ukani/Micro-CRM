@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <b>{{ __('Company Details') }} </b>
                        <b><a href="{{ route('company.index') }}">Back to list</a></b>
                    </div>

                    <div class="card-body pt-2">
                        <form action="{{ route('company.store') }}" method="POST" enctype="multipart/form-data">
                            <div class="mt-4">
                                <table class="table">
                                    <tr>
                                        <td>Company Name</td>
                                        <th> {{ $company->name }} </th>
                                    </tr>
                                    <tr>
                                        <td>Company email</td>
                                        <th> {{ $company->email }} </th>
                                    </tr>
                                    <tr>
                                        <td>Company website</td>
                                        <th> <a href="{{ $company->website }}" target="_blank">{{ $company->website }}</a>
                                        </th>
                                    </tr>
                                    <tr>
                                        <td>Company Logo</td>
                                        <th><img src="{{ URL::asset('storage/' . $company->logo) }}" alt="Comapny Logo"
                                                width="50" height="50" class="rounded"></th>
                                    </tr>
                                    <tr>
                                        <td>Created Date</td>
                                        <th>{{ $company->created_at }}</th>
                                    </tr>
                                </table>
                            </div>

                            <div class="mt-5 d-flex justify-content-between">
                                <a href="{{ route('company.index') }}" class="btn btn-warning mt-2">Cancel</a>
                                <a href="{{ route('company.edit', ['company' => $company]) }}"
                                    class="btn btn-success mt-2">Edit</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
