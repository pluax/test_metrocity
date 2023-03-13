jQuery(function($){
    $('#loadmore').click(function(){ 
        $(this).text('Загрузка...');
        var data = {
            'action': 'loadmore',
            'query': posts_vars,
            'page' : current_page
        };
        $.ajax({
            url:ajaxurl,
            data:data,
            type:'POST',
            success:function(data){
				console.log(data);
                if(data) { 
					
                    $('.with-filter').after(data); 
                    current_page++; 
                    if (current_page == max_pages) $("#loadmore").remove(); 
                } else {
                    $('#loadmore').remove(); 
                }
            }
        });
    });
});