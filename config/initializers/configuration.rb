FullcalendarEngine::Configuration = {
  'editable'    => true,
  'header'      => {
    left: 'prev,next today',
    center: 'title',
    right: 'month,agendaWeek,agendaDay'
  },
  'defaultView' => 'month',
  'height'      => 500,
  'slotMinutes' => 15,
  'dragOpacity' => 0.5,
  'selectable'  => true,
  'timeFormat'  => "h:mm t{ - h:mm t}",
  'disableDragging' => true,
  'mount_path' => '/calendar'
}
FullcalendarEngine::Configuration['events'] = "/calendar/events/get_events"
