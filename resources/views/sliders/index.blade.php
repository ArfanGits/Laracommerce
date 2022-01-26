@extends('layout.master')
@section('content')

<div class="card">
    <div class="card-header">
        <div class="card-title"> Slider List</div>
        <a href="{{route('sliders.create')}}" class="btn btn-sm btn btn-info">Create</a>
    </div>
    <div class="card-body">
        <table class="table table-stripped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Subtitle</th>
                    <th>Price</th>
                    <th>Image</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($sliders as $slider)
                <tr>
                    <td scope="row">{{$loop->iteration}}</td>
                    <td>{{$slider->title}}</td>
                    <td>{{$slider->subtitle}}</td>
                    <td>{{$slider->price}}</td>
                    <td>{{$slider->image}}</td>
                    <td>
                        <a href="{{route('sliders.edit',$slider->id)}}" 
                            class="btn btn-info">Edit</a>|
                        <a href="{{route('sliders.show',$slider->id)}}" 
                                class="btn btn-success">Show</a>|
                            {{-- <button type="button" class="btn btn-danger">Left</button> --}}
                        <form action="{{route('sliders.destroy',$slider->id)}}" method="post">
                            @csrf
                            @method(' DELETE')
                            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure want to delete?')"
                            >Delete</button>
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>


@endsection