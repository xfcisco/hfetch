require 'json'

def handle_meal(s_meal)
  File.open("/home/#{ENV['USER']}/.config/hfetch.meals.json", "r+") do |f|
    db_json = JSON.parse(f.read);
    db_json["#{Time.new.strftime("%Y-%m-%d %H:%M")}"] = JSON.parse(s_meal);

    f.rewind;
    f.write (JSON.generate db_json);
  end
end
