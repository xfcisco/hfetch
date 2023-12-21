require 'json'

def handle_workout(s_workout)
  File.open("/home/#{ENV['USER']}/.config/hfetch.json", "r+") do |f|
    db_json = JSON.parse(f.read);
    db_json["#{Time.new.strftime("%Y-%m-%d %H:%M")}"] = JSON.parse(s_workout);

    f.rewind;
    f.write (JSON.generate db_json);
  end
end

