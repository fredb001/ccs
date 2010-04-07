# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


Content.create([
        {:name => "Call for <b>Speakers</b>!", :value => 'May 1st is rapidly approaching, don\'t miss your chance to be heard! <a href="/submissions/new">Submit your talk here!</a>', :category => "home", :sequence => 1},
        {:name => "Call for <b>Volunteers</b>!", :value => 'Want to participate in the Chicago Code Camp 2 but without the pressure of presenting? We have plenty that needs to be done and need YOUR help. Sign up to volunteer <a href="/volunteers/new">here</a>', :category => "home", :sequence => 1},

        {:name => 'What is a "Code Camp" anyway?', :value => '"<a href="">The Code Camp Manifesto</a>" declares a simple idea to bring developers from disparate platforms and languages together into one software community.
<br/>  
<ul>
    <li>By and For the Developer Community</li>
  <li>Always Free</li>
  <li>Community Developed Material</li>
  <li>No Fluff only Code</li>
  <li>Never occur during work hours</li>
  </ul>', :category => "home", :sequence => 3},
        {:name => "A grab-bag of technologies", :value => "Last year's event covered a broad spectrum of languages and technologies, from Python in the Cloud to Objective-C on the iPhone from AOP on .NET to Scala on the JVM, there was a session for every interest.", :category => "home", :sequence=> 4},
])