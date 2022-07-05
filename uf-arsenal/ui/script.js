var actionContainer = $("#container");
actionContainer.hide()
$(document).ready(()=>{
    window.addEventListener('message',function(event){
        var item = event.data;
        if (item.action == "show"){
            var produtos = document.getElementsByClassName("produto")
            let item = $(produtos[0]).find(".nomeProduto").text()
            let image = $(produtos[0]).css("background-image") 
            $(produtos[0]).addClass("selecionado")
            $("#fotoShow").css("background-image",image)
            $("#nomeShow").text(item)

           actionContainer.show();
        }
        if (item.action == "close"){
            actionContainer.hide();
        }
    });

    $(document).on('click','.produto',function(){
        let item = $(this).find(".nomeProduto").text()
        let image = $(this).css("background-image") 
        if($(this).hasClass("selecionado")){
        $.post("http://uf-arsenal/select", JSON.stringify({
            item: item,
        }))
        }else {
            $(".selecionado").removeClass("selecionado")
            $(this).addClass("selecionado")
            $("#fotoShow").css("background-image",image)
            $("#nomeShow").text(item)
        }
    });    
    
    $(document).on('click','#equipar',function(){
        let item = $("#nomeShow").text()
        $.post("http://uf-arsenal/select", JSON.stringify({
            item: item,
        }))
    });


    $(document).on('click','#guardar',function(){
        $.post("http://uf-arsenal/guardar", JSON.stringify({}))
    });

    document.onkeyup = function(data){
        if (data.which == 27){       
            if ($('#container').is(":visible")){
                $.post("http://uf-arsenal/close");
            }
        }
    };
});


