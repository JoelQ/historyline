json.timeline do |json|
  json.headline @course.name
  json.type "default"
  json.text @course.description

  json.date @course.events do |json, event|
    json.startDate event.start_date
    json.endDate event.end_date
    json.headline event.name
    json.text event.description

    json.asset do |json|
      json.media event.media
      json.credit event.credit
      json.caption event.caption
    end
  end
end