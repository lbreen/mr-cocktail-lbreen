// $(document).ready(function(){

//   $('.product-arrow').on('click', function(event) {
//     event.preventDefault();

//     var rating = $('.product-count');

//     console.log(event);




//   });




// });

  // $('form').submit(function(event){
  //   // This overrides the default submission behaviour of the form - need to divert to AJAX
  //   event.preventDefault();

  //   // This retrieves the message and username.
  //   var message = $('#your-message').val();
  //   var username = $('#your-name').val();

  //   if (message === "" && username === "") {
  //     $('#your-message').addClass('error');
  //     $('#your-name').addClass('error');
  //   } else if (message === "") {
  //     $('#your-message').addClass('error');
  //   } else if (username === "") {
  //     $('#your-name').addClass('error');
  //   } else {
  //     // This removes any error css
  //     $('#your-name').removeClass('error');
  //     $('#your-message').removeClass('error');

  //     // This pushes the message to the Chat server and posts to client message board.
  //     postToServer(username, message);
  //   };
  // });

  // function postToServer(username, message){
  //   var post = JSON.stringify({
  //     "author" : username,
  //     "content" : message
  //   });

  //   $.ajax({
  //     type: "POST",
  //     url: baseUrl + promo + "/comments",
  //     data: post,
  //     success: function(data) {
  //       postMessageToBoard(data);
  //     }
  //   });
  // }
