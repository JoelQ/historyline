json.timeline do |json|
  json.headline @course.name
  json.type "default"
  json.text @course.description

  json.date @course.events do |json, event|
    json.startDate (event.start_year.present? && event.start_month.present? && event.start_day.present?) ? "#{event.start_year}, #{event.start_month}, #{event.start_day}" : ""
    json.endDate (event.end_year.present? && event.end_month.present? && event.end_day.present?) ? "#{event.end_year}, #{event.end_month}, #{event.end_day}" : ""
    json.headline event.name
    json.text event.description

    json.asset do |json|
      json.media event.media
      json.credit event.credit
      json.caption event.caption
    end
  end
end