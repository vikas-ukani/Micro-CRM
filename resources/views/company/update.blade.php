@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <b>{{ __('Update Company Details') }} </b>
                        <b><a href="{{ route('company.index') }}">Back to list</a></b>
                    </div>

                    <div class="card-body pt-2">
                        <form action="{{ route('company.update', ['company' => $company]) }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            {{-- <small >(* all fields required)</small> --}}
                            <div class="form-group mt-2">
                                <label for="name" class="text-capitalize">name <span
                                        class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="name" name="name"
                                    placeholder="Enter company name" value="{{ $company->name }}">
                                @if ($errors->has('name'))
                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                @endif
                            </div>

                            <div class="form-group mt-2">
                                <label for="email" class="text-capitalize">email <span
                                        class="text-danger">*</span></label>
                                <input type="email" class="form-control" id="email" name="email"
                                    placeholder="Enter company email" value="{{ $company->email }}">
                                @if ($errors->has('email'))
                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            </div>

                            <div class="form-group mt-2">
                                <label for="website" class="text-capitalize">website <span
                                        class="text-danger">*</span></label>
                                <input type="url" class="form-control" id="website" name="website"
                                    placeholder="Enter company website" value="{{ $company->website }}">
                                @if ($errors->has('website'))
                                    <span class="text-danger">{{ $errors->first('website') }}</span>
                                @endif
                            </div>

                            <div class="form-group mt-2">
                                <label for="logo">Company logo <span class="text-danger">*</span></label>

                                <img src="{{ URL::asset('storage/' . $company->logo) }}" alt="Comapny Logo" width="50"
                                    height="50" class="rounded">

                                <div class="clearfix"></div>
                                <input type="file" class="form-control-file mt-2" id="logo" name="logo">
                                <div class="clearfix"></div>
                                @if ($errors->has('logo'))
                                    <span class="text-danger">{{ $errors->first('logo') }}</span>
                                @endif
                            </div>

                            <div class="mt-5 d-flex justify-content-between">
                                <a href="{{ route('company.index') }}" class="btn btn-warning mt-2">Cancle</a>
                                <input type="submit" class="btn btn-success mt-2" name="submit" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
