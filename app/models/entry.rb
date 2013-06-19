class Entry < ActiveRecord::Base
  attr_accessible :date, :note, :subject

  def date
    if self[:date].present?
      self[:date].strftime('%m/%d/%Y')
    end
  end
end
