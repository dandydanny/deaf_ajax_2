// This is called after the document has loaded in its entirety
// This guarantees that any elements we bind to will exist on the page
// when we try to bind to them
// See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
$(document).ready(function() {
 
  // Do this when user finishes typing. No need to click submit
  //$( "#ajaxinput" ).keyup(function(event) {
 
  // Do this when submit is triggered in form
  $("form").submit(function(event)  {
 
    // prevents default action from happening
    // (in this case: page refresh on form submit)
    event.preventDefault();
 
    var str = $(this).serialize();
 
    console.log( str );
 
    var posting = $.post( "/grandma", str );
 
    // AJAX style POST,
    // Destination: /grandma
    // Argument: str
    // We get 'data' back from server
    $.post( "/grandma", str, function( data ) {
      
      console.log ( "Done posting" );
      console.log ( data );
 
      // Replace div 
      $( "#grandma_says" ).empty().append( data );
 
    });
 
  });
  
});