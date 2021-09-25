<template>
   <div class="card mt-4">
                <div class="card-header">
                    <div class="card-heading">Publicado en {{ thought.created_at | moment("d/M/YYYY") }} <span v-if="thought.created_at !== thought.updated_at"> - Última actualización: {{ thought.updated_at | moment("d/M/YYYY")}}</span></div>
                </div>
                <div class="card-body">
                    
                    <input v-if="editMode" type="text" class="form-control" v-model="thought.description">
                    <p v-else>{{ thought.description }}</p>
                </div>
                <div class="card-footer">
                    <button v-if="editMode" type="button" class="btn btn-success" v-on:click="onClickUpdate()">Guardar cambios</button>
                    <button v-else class="btn btn-secondary" v-on:click="onClickEdit()">Editar</button>
                    <button class="btn btn-danger" v-on:click="onClickDelete()">Eliminar</button>
                </div>
            </div>            
</template>

<script>
Vue.use(require('vue-moment'));
    export default {
        props: ['thought'],
        data() {
            return {
                editMode: false,
            }
        },
        mounted() {
            console.log('Component mounted.')
        },
        methods: {
            onClickDelete(){
                axios.delete(`/thoughts/${this.thought.id}`).then(() => {
                    this.$emit('delete');
                });
                
            },
            onClickEdit(){
                this.editMode = true;
            },
            onClickUpdate(){
                axios.put(`/thoughts/${this.thought.id}`, this.thought).then((response) => {
                    this.editMode = false;
                    const thought = response.data;
                    this.$emit('update', thought);
                });               
            }
        }
    }
</script>
