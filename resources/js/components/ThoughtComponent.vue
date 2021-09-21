<template>
   <div class="card mt-4">
                <div class="card-header">
                    <div class="card-heading">Publicado en {{ thought.created_at }}</div>
                </div>
                <div class="card-body">
                    <p>{{ thought.description }}</p>
                </div>
                <div class="card-footer">
                    <button class="btn btn-secondary">Editar</button>
                    <button class="btn btn-danger">Eliminar</button>
                </div>
            </div>            
</template>

<script>
    export default {
        props: ['thought'],
        data() {
            return {
                thought: {
                     'id': '',
                     'description': '',
                     'created_at': ''
                 }
            };
        },
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
