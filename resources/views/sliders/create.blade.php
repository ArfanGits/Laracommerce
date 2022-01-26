@extends('layout.master')
@section('content')

<div class="card">
    <div class="card-header">
        <div class="card-title">Create slider</div>
        <a href="{{route('sliders.index')}}" class="btn btn-sm btn btn-info">Index</a>
    </div>
    <div class="card-body">
        <form action="{{route('sliders.store')}}" method="POST">
            @csrf
            <div class="form-group">
                <label class="col-md-10 control-label">Title</label>
                <div class="col-md-8">
                    <input 
                        type="text" 
                        name="title" 
                        value="" 
                        placeholder="title" 
                        class="form-control input-md" 
                    />
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-10 control-label">Subtitle</label>
                <div class="col-md-8">
                    <input 
                        type="text" 
                        name="subtitle" 
                        value="" 
                        placeholder="subtitle" 
                        class="form-control input-md" 
                    />
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-10 control-label">Price</label>
                <div class="col-md-8">
                    <input 
                        type="text" 
                        name="price" 
                        value="" 
                        placeholder="price" 
                        class="form-control input-md" 
                    />
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-10 control-label">Link</label>
                <div class="col-md-8">
                    <input 
                        type="text" 
                        name="link" 
                        value="" 
                        placeholder="link" 
                        class="form-control input-md" 
                    />
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-10 control-label">Image</label>
                <div class="col-md-8">
                    <input 
                        type="file" 
                        name="image" 
                        value="" 
                        placeholder="image" 
                        class="form-control input-md" 
                    />
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-10 control-label">Status</label>
                <div class="col-md-8">
                    <input 
                        type="text" 
                        name="status" 
                        value="" 
                        placeholder="Status" 
                        class="form-control input-md" 
                    />
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-8">
                    <button type="submit" class="btn btn-success">Submit</button>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection