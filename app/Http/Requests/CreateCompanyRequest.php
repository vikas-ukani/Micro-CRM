<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateCompanyRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|min:3',
            'email' => 'required|unique:companies,email|min:3',
            'logo' => 'required|max:50000|mimes:png,jpeg,gif|dimensions:max_width=100,max_height=100',
            'website' => 'required|url',
        ];
    }

    public function messages(): array
    {
        return [
            'logo.dimensions' => "The :attribute has invalid image dimensions (use 100x100 image dimensions.)"
        ];
    }
}
