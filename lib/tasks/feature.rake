namespace :features do
  desc "list all feature toggles"
  task :list => :environment do
    pp Feature.list
  end

  desc "enable feature toggle"
  task :enable, [:name] => :environment do |t, args|
    if args[:name]
      Feature.set(args[:name], true)
    else
      puts "Usage: rake features:enable[toggle_name]"
    end
  end

  desc "disable feature toggle"
  task :disable, [:name] => :environment do |t, args|
    if args[:name]
      Feature.set(args[:name], false)
    else
      puts "Usage: rake features:disable[toggle_name]"
    end
  end

  desc "delete a feature toggle"
  task :remove, [:name] => :environment do |t, args|
    if args[:name]
      Feature.delete(args[:name])
    else
      puts "Usage: rake features:remove[toggle_name]"
    end
  end

  desc "create an active feature toggle"
  task :add_active, [:name] => :environment do |t, args|
    if args[:name]
      Feature.add(args[:name], true)
    else
      puts "Usage: rake features:add_active[toggle_name]"
    end
  end

  desc "create an inactive feature toggle"
  task :add_inactive, [:name] => :environment do |t, args|
    if args[:name]
      Feature.add(args[:name], false)
    else
      puts "Usage: rake features:add_inactive[toggle_name]"
    end
  end
end
