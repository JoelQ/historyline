json.timeline do |json|
  json.headline @course.name
  json.type "default"
  json.text @course.description

  json.date @course.events do |json, event|
    json.startDate event.start_date.present? ? "#{event.start_date.year}, #{event.start_date.month}, #{event.start_date.day}" : ""
    json.endDate event.end_date.present? ? "#{event.end_date.year}, #{event.end_date.month}, #{event.end_date.day}" : ""
    json.headline event.name
    json.text event.description

    json.asset do |json|
      json.media event.media
      json.credit event.credit
      json.caption event.caption
    end
  end
end