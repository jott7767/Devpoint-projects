$(document).ready(function() {
  var baseUrl = 'https://devpoint-ajax-example-server.herokuapp.com/api/v1/';

  function userCard(user) {
    $.ajax({
      url: '/user_card',
      type: 'GET',
      data: {user: user},
      success: function(data) {
        $('#users').append(data);
      },
      error: function(data) {
        console.log(data);
      }
    });
  }

  function getUsers() {
    $('#users').empty();
    $.ajax({
      url: baseUrl + 'users',
      type: 'GET',
      success: function(data) {
        var users = data.users;
        for(var i = 0; i < users.length; i++) {
          var user = users[i];
          userCard(user);
        }
      },
      error: function(error) {
        console.log(error);
      }
    });
  }


  getUsers();


  $(document).on('click', '#new_user', function(){
      $('#new_user_form').removeClass('hide');
      $('#new_user').addClass('hide');
  });

  $('#new_user_form').on('submit', function(e) {
    e.preventDefault();
    $.ajax({
      url: baseUrl + 'users',
      dataType: 'JSON',
      type: 'POST',
      data: $(this).serializeArray(),
      success: function(data) {
        console.log(data.user);
        $('#new_user_form').addClass('hide');
        $('#new_user').removeClass('hide');
        getUsers();
      },
      error: function(error) {
        console.log(error);
      }
    });
  });






});