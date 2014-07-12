FULLCALENDAR_FILE_PATH = Rails.root.join('config', 'fullcalendar.yml')
config = File.exists?(FULLCALENDAR_FILE_PATH) ? YAML.load_file(FULLCALENDAR_FILE_PATH) || {} : {}
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
  'mount_path' => 'admin/calendar'
}
FullcalendarEngine::Configuration.merge!(config)
FullcalendarEngine::Configuration['events'] = "/calendar/events/get_events"
