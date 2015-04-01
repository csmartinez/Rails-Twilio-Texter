$(document).ready(function() {
  $('#add').click(function() {
    $('#new-number').append('<label for="message-to">To</label>' +
    '<input type="text" name="message[to]" id="message_to">');
  });
});
