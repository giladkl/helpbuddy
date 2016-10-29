$( function() {
    $( "#sortable" ).sortable({
    	update: function( event, ui ) {update_admin_priorities($(this).sortable("toArray"))}
    });
    $( "#sortable" ).disableSelection();

});


// input: an array of ids in the order of the prioraties:
// EXAMPLE: [1,2,4,3]
// result: will update priority in db
function update_admin_priorities(phone_priority_ids)
{
	$.ajax({
	    url: 'phones/update_priority_list',
	    type: 'PUT',
	    data: {"priority_list": phone_priority_ids},
	    success: function(result) {
	        
	    }
	});
}