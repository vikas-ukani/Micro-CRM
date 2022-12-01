<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Http\Requests\CreateEmployeeRequest;
use App\Http\Requests\UpdateEmployeeRequest;

class EmployeeController extends Controller
{

    protected $company;
    protected $employee;

    public function __construct(Company $company, Employee $employee)
    {
        $this->company = $company;
        $this->employee = $employee;
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $employees = $this->employee->with(['company' => function($query) {
            return $query->select(['id', 'name', 'email']);
        }])->orderBy('created_at', 'DESC')->paginate(10);
        return view('employee.index', compact('employees'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $companies = $this->company->select(['id', 'name'])->get();
        return view('employee.create', compact('companies'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CreateEmployeeRequest $request)
    {
        $this->employee->create($request->validated());
        Session::flash('success', 'Employee has been created!');
        return redirect(route('employee.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function show(Employee $employee)
    {
        $employee->load(['company' => function ($query) {
            return $query->select(['id', 'name', 'email']);
        }]);
        return view('employee.view', compact('employee'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function edit(Employee $employee)
    {
        $companies = $this->company->select(['id', 'name'])->get();
        $employee->load(['company' => function ($query) {
            return $query->select(['id', 'name', 'email']);
        }]);
        return view('employee.update', compact('employee', 'companies'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateEmployeeRequest $request, Employee $employee)
    {
        $input = $request->validated();
        $this->employee->find($employee->id)->update($request->validated());
        Session::flash('success', 'Employee has been updated!');
        return redirect(route('employee.index'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Employee  $employee
     * @return \Illuminate\Http\Response
     */
    public function destroy(Employee $employee)
    {
        $this->employee->where('id', $employee->id)->delete();
        Session::flash('success', 'Employee has been deleted!');
        return redirect(route('employee.index'));
    }
}
