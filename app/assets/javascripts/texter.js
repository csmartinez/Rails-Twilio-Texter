$(document).ready(function() {
  $('#add').click(function() {
    $('#new-number').append('<form class="new-message" action="/messages">' +
    '<label for="Number">Number</label>' +
    '<input type="text" name="message[to]" id="message_to">' +
    '</div>');
  });
});
