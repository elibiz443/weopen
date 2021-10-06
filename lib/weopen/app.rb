module Weopen
  class App
    def day
      day = Date.today.wday
      days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
      @current_day = days[day]
    end

    def open_closed
      if @current_day != "Saturday" && @current_day != "Sunday"
        working_hours = Time.now.strftime("%I%p")
        case working_hours
        when "08AM", "09AM", "10AM", "11AM", "12AM", "01PM", "02PM", "03PM", "04PM", "05PM"
          "open"
        else
          "closed"
        end
      else
        if @current_day == "Saturday"
          case working_hours
          when "08AM", "09AM", "10AM", "11AM", "12AM"
            "open"
          else
            "closed"
          end
        else
          "closed"
        end
      end
    end
  end
end
