<template>
   <div class="card mt-4">
          
                <div class="card-header">¿En qué estás pensando ahora?</div>
                <div class="card-body">

                    <form action="" v-on:submit.prevent="NewThought()">
                        <div class="form-group">
                            <label for="thought">Ahora estoy pensando en:</label>
                            <input type="text" class="form-control" name="thought" v-model="description">
                        </div>
                        <div>
                            <button type="submit" class="btn btn-primary">Enviar pensamiento</button>
                        </div>
                    </form>
                </div>
    
    </div>
</template>

<script>
    export default {
        data(){
            return {
                description: ''
            }
        },
        mounted() {
            console.log('Component mounted.')
        },
        methods: {
            NewThought() {
                const params = {
                    description: this.description
                };
                this.description = '';

                axios.post('/thoughts', params).then((response) => {
                    const thought = response.data;
                    this.$emit('new', thought);
                    
                });

                let thought = {
                    id: 3,
                    description: this.description,
                    created_at: '22/11/2033'
                };
                
            }
        }
    }
</script>
