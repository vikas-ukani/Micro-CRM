@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between">
                        <b>{{ __('Update employee details') }} </b>
                        <b><a href="{{ route('employee.index') }}">Back to list</a></b>
                    </div>

                    <div class="card-body pt-2">
                        <form action="{{ route('employee.update', ['employee' => $employee]) }}" method="POST"
                            enctype="multipart/form-data">
                            @csrf
                            @method('PUT')
                            {{-- <small >(* all fields required)</small> --}}
                            <div class="form-group mt-2">
                                <label for="first_name" class="text-capitalize">first name <span
                                        class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="first_name" name="first_name"
                                    placeholder="Enter employee first name" value="{{ $employee->first_name }}">
                                @if ($errors->has('first_name'))
                                    <span class="text-danger">{{ $errors->first('first_name') }}</span>
                                @endif
                            </div>
                            <div class="form-group mt-2">
                                <label for="last_name" class="text-capitalize">last name <span
                                        class="text-danger">*</span></label>
                                <input type="text" class="form-control" id="last_name" name="last_name"
                                    placeholder="Enter employee last name" value="{{ $employee->last_name }}">
                                @if ($errors->has('last_name'))
                                    <span class="text-danger">{{ $errors->first('last_name') }}</span>
                                @endif
                            </div>

                            <div class="form-group mt-2">
                                <label for="company_id">Select Company <span class="text-danger">*</span></label>
                                <select class="form-control" id="company_id" name="company_id">
                                    <option value="" disabled>Please select company.</option>
                                    @foreach ($companies as $company)
                                        <option value="{{ $company->id }}"
                                            @if ($company->id == $employee->company->id) selected @endif>{{ $company->name }}</option>
                                    @endforeach
                                </select>
                                @if ($errors->has('company_id'))
                                    <span class="text-danger">{{ $errors->first('company_id') }}</span>
                                @endif
                            </div>

                            <div class="form-group mt-2">
                                <label for="email" class="text-capitalize">email <span
                                        class="text-danger">*</span></label>
                                <input type="email" class="form-control" id="email" name="email"
                                    placeholder="Enter employee email" value="{{ $employee->email }}">
                                @if ($errors->has('email'))
                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                @endif
                            </div>

                            <div class="form-group mt-2">
                                <label for="website" class="text-capitalize">phone <span
                                        class="text-danger">*</span></label>
                                <input type="number" class="form-control" id="phone" name="phone"
                                    placeholder="Enter employee phone" value="{{ $employee->phone }}">
                                @if ($errors->has('phone'))
                                    <span class="text-danger">{{ $errors->first('phone') }}</span>
                                @endif
                            </div>

                            <div class="mt-5 d-flex justify-content-between">
                                <a href="{{ route('employee.index') }}" class="btn btn-warning mt-2">Cancle</a>
                                <input type="submit" class="btn btn-success mt-2" name="submit" value="Submit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
