$(function() {
  function refresh() {
    $('#content_frame').html($('#snippet_content').val());
  }

  $('#snippet_content').keyup(function() {
    refresh();
  });

  refresh();

});
