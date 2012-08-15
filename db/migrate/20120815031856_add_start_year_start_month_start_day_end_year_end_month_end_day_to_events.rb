class AddStartYearStartMonthStartDayEndYearEndMonthEndDayToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start_year, :integer
    add_column :events, :start_month, :integer
    add_column :events, :start_day, :integer
    add_column :events, :end_year, :integer
    add_column :events, :end_month, :integer
    add_column :events, :end_day, :integer
    remove_column :events, :start_date
    remove_column :events, :end_date
  end
end
