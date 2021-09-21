<template>
   <div class="card mt-4">
           <div class="card">
                <div class="card-header">¿En qué estás pensando ahora?</div>
                <div class="card-body">

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
    </div>
</template>

<script>
    export default {
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
