<template>
  
<div class="row justify-content-center">
    <div class="col-md-8 col-md-offset-2">

        <form-component></form-component>

        <thought-component v-for="thought in thoughts" :key="thought.id" :thought="thought"></thought-component>

    </div>
</div>

</template>

<script>
    export default {
        data() {
            return {
                thoughts:
                 [
                    {
                    'id' : 1,
                    'description' : 'abc',
                    'created_at' : '18/09/2021'
                    },
                    {
                    'id' : 2,
                    'description' : 'dfg',
                    'created_at' : '20/10/2021'
                    }
                ]
            }
        },
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
