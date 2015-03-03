// Generated by CoffeeScript 1.6.3
(function() {
  $(function() {
    $('#head_checkbox').click(function() {
      var flag;
      flag = $(this).is(':checked');
      return $(':checkbox').each(function() {
        if (flag) {
          return $(this).attr('checked', 'checked');
        } else {
          return $(this).removeAttr('checked');
        }
      });
    });
    $('.btn').click(function() {
      var select_id, selected_charges;
      select_id = $(this).attr("id").substring(3);
      selected_charges = [];
      $('#charge_list tr').filter(':has(:checkbox:checked)').each(function() {
        if ($(this).attr('id') !== void 0) {
          return selected_charges.push($(this).attr('id'));
        }
      });
      return location.href = "/list/" + select_id + "/" + selected_charges;
    });
    window.prettyPrint && prettyPrint();
    $('#start_date, #end_date').datepicker({
      format: 'yyyy-mm-dd'
    });
    return $('#usage_date').datepicker({
      format: 'yyyy-mm-dd'
    });
  });

}).call(this);
