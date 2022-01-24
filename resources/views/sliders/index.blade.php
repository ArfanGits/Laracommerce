@extends('layout.master')
@section('content')

<div class="card">
    <div class="card-header">
        <div class="card-title"> Slider List</div>
        <a href="{{route('sliders.create')}}" class="btn btn-sm btn btn-info"></a>
    </div>
    <div class="card-body">
        <table class="table-stripped">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Title</th>
                    <th>Subtitle</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>


@endsection