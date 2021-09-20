@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8 col-md-offset-2">
            <div class="card">
                <div class="card-header">¿En qué estás pensando ahora?</div>
                <div class="card-body">

                    @if(session('status'))
                    <div class="alert alert-success">
                        {{ session('status') }}
                    </div>
                    @endif

                    <form action="">
                        <div class="form-group">
                            <label for="thought">Ahora estoy pensando en:</label>
                            <input type="text" class="form-control" name="thought">
                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary">Enviar pensamiento</button>
                        </div>
                    </form>

                </div>
            </div>
            <div class="card mt-4">
                <div class="card-header">
                    <div class="card-heading">Publicado en 18/09/2021</div>
                </div>
                <div class="card-body">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Suscipit inventore ea aut beatae, consequuntur sed eius accusantium eligendi aliquid illo quo ipsam repellendus molestiae, necessitatibus deserunt non! Dolor, molestias odit.</p>
                </div>
                <div class="card-footer">
                    <button class="btn btn-secondary">Editar</button>
                    <button class="btn btn-danger">Eliminar</button>
                </div>
            </div>

        </div>
    </div>
</div>
@endsection