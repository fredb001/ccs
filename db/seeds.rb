# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)


Content.create([
        {:name => "Call for <b>Speakers</b>!", :value => 'May 1st is rapidly approaching, don\'t miss your chance to be heard! <a href="/submissions/new">Submit your talk here!</a>', :category => "home", :sequence => 1},
        {:display => true, :sequence => 1, :name => "<b>.NET Rocks!</b> is coming to Chicago Code Camp!",
         :value => "<p>
We're honored to have the guys from the <b>.NET Rocks!</b> internet audio
talk show join us for a great day of fun and learning for developers
of all platforms.
</p>
<p>The <b>.NET Rocks!</b> crew is on a roadtrip throughout the nation and
will be stopping in Chicago, along with a mystery guest rockstar from
the Microsoft platform. We can't wait to learn who for ourselves!</p>
<p><a href='http://www.dotnetrocks.com/roadtrip.aspx'>The <b>.NET Rocks!</b> Visual Studio 2010 Road Trip</a></p>", :category => "home"},
        {:display => true, :name => "Call for <b>Volunteers</b>!", :value => 'Want to participate in the Chicago Code Camp 2 but without the pressure of presenting? We have plenty that needs to be done and need YOUR help. Sign up to volunteer <a href="/volunteers/new">here</a>', :category => "home", :sequence => 1},

        {:display => true, :name => 'What is a "Code Camp" anyway?', :value => '"<a href="http://www.thedevcommunity.org/codecamps/manifesto.aspx">The Code Camp Manifesto</a>" declares a simple idea to bring developers from disparate platforms and languages together into one software community.
<br />
<br />
<ul>
<li>By and For the Developer Community</li>
<li>Always Free</li>
<li>Community Developed Material</li>
<li>No Fluff only Code</li>
<li>Never occur during work hours</li>
</ul>', :category => "home", :sequence => 3},
        {:display => true, :name => "A grab-bag of technologies", :value => "Last year's event covered a broad spectrum of languages and technologies, from Python in the Cloud to Objective-C on the iPhone from AOP on .NET to Scala on the JVM, there was a session for every interest.", :category => "home", :sequence=> 4},
])


Configuration.create([
        {:key => "open_call_for_speakers", :value=>false},
        {:key => "open_call_for_volunteers", :value=>true},
])


Presentation.create([
  {:speaker=>"Rockford Lhotka",
    :title => "CSLA .NET 4",
    :description => "CSLA .NET is one of the most widely used frameworks for the .NET and Silverlight platforms. In this session you will learn what is new in version 4 of the framework, which provides support for Visual Studio 2010, Silverlight 4 and .NET 4."},
  
  {:speaker=>"Jay Schmelzer",
    :title => "ALM with SharePoint 2010 and Visual Studio 2010",
    :description => "Microsoft SharePoint 2010 has evolved into a great developer platform with new tools, services and APIs. This session will provide an overview of the new project templates, build and deploy features, configuration features, and how you can leverage the ALM capabilities of Visual Studio 2010 when developing SharePoint solutions. If you're doing SharePoint development today or looking start start you don't want to miss this session."},
  
  {:speaker=>"Ryan Briones",
    :title => "Ruby for the Web",
    :description => "If your first thought when deciding to build a web application with Ruby is to run \"rails APPNAME\", I'm here to tell you: You're doing it all wrong.
  
  Ok, that was a bit harsh. But you needed to hear it. Q: Has Ruby on Rails transformed the way we think about building web applications? A: Yes. Q: But isn't it true that using Rails is extremely simple to use even if I haven't done Ruby before? A: Yes. Q: So Rails is what I should you use build Ruby web applications? A: Maybe.
  
  If Rails is a hammer, it's my goal to show you that your next project may need nails. I hope to show you the benefits of how using simple Ruby can put you on the path to better application design. I'll also show you a few tools of the Rubyist's trade that enable you to build a modular web application from emerging needs of your problem space. In the end we'll come full circle and I'll show you how the Rails philosophy is shifting in the direction of modular design and how we can leverage all of our knowledge with Rails to build powerful Ruby applications for the web."},
  
  {:speaker=>"Damon Payne",
    :title => "What can I do with MEF?",
    :description => "The Managed Extensibility Framework has left excitement and confusion in its wake as .NET 4 moves towards release. What can I use this for? What should I use this for? Is this another IoC/DI container? What about Unity? What about the System.AddIn namespace? In this talk we will explain the workings of MEF using straightforward examples and then dig deep into the real power of MEF using examples including MEF for Silverlight, MEF for WPF, and MEF for Enterprise services."},
  
  {:speaker=>"Colin Jones",
    :title => "Zero to Clojure",
    :description => "We all know that learning one new language a year is a great goal for improvement as a programmer.  However, it can be a bit intimidating to get started in a new language, especially one that looks very different from what you're used to. Clojure brings together the expressiveness and power of Lisp, fantastic concurrency semantics, and the rich libraries of Java. This tutorial will quickly acclimate attendees to Clojure, along with some motivation for functional programming."},
  
  {:speaker=>"Aaron Erickson",
    :title => "The Amazing Possibilities of Dynamic C#",
    :description => "Using dynamic in C# to do all the things as a C# programmer that those hippies in the world of Ruby have been able to do for years.  Ideas like ActiveRecord, dynamic truth tables, dynamic readers for XML and JSON, and others will be demonstrated."},
  
  {:speaker=>"Justin Martin",
    :title => "Code Sense \"What is good code?\"",
    :description => "This talk is about the search for, and the process of, discovering what people think makes good code.  First we will look at a variety of code snippets, rating whether we think they are good or bad examples of code.  Then we will examine our consistency and our reasoning behind declaring certain snippets as good or bad.  Finally, just for fun, we will compare our ratings to those of industry experts such as Uncle Bob Martin."},
  
  {:speaker=>"Amanda Laucher",
    :title => "Functional Programming Glossary",
    :description => "There are so many new words we keep hearing associated with functional programming. I'll go through some of the big ones and show you what they actually mean. It feels like people like to say big words to make themselves sound smarter. Unfortunately after you start working with them, it becomes second nature and you forget that not everyone knows your jargon. We'll dig into some types of morphisms, currying and partial application (There's a difference?!), monads, algebraic data types, and more. While you may leave the talk not understanding all of these things, you will at least have an overview of all of them and some guidance about where to learn more. "},
  
  {:speaker=>"Dean Wampler",
    :title => "The Seductions of Scala",
    :description => ""},
  
  {:speaker=>"Dave Bost",
    :title => "Windows Phone 7 + Silverlight = Sexy",
    :description => "This session will provide an overview of the functionality for Silverlight applications that is unique to the Windows Phone application platform. We'll cover the Windows Phone 7 application model, control templates, themes, in addition to some of the new input paradigms including multi-touch, software keyboard and the APIs to leverage the built-in phone applications."},
  
  {:speaker=>"Eduardo Scoz",
    :title => "MonoTouch!",
    :description => "Did you know its possible to develop iPhone (and magic iPad) applications using C#, WCF and LINQ?<br /><br />MonoTouch is a new SDK based on Novell's Mono platform that allows developers to create native iPhone/iPad applications using .NET languages and APIs. In this presentation, I'll be talking about the iPhone platform in general, how MonoTouch fits in that ecosystem, some of its features, and he will show how to create a quick sample application."},
  
  {:speaker=>"Lance Larsen",
    :title => "Windows Phone 7: Intro to Silverlight Dev on WP7",
    :description => "Windows Phone 7 development took center stage at Microsoft MIX 2010 and for good reason, it's a major initiative at Microsoft incorporating some of the most exciting technologies - specifically we will take a look at building your first Silverlight application in the Windows Phone 7 Emulator and hopefully beyond.  We will also briefly touch on the Windows Marketplace and the huge potential to Monetize your development efforts and get your applications out to the public.  Hope to see you there!"},
  
  {:speaker=>"Lwin Maung & Min Maung",
    :title => "Android 101 & Why Android",
    :description => "Why develop for Android OS? The basics of how to get started on Android Application.<br /><br />We will be covering the basics of Android OS, partition layouts, basic adb and fastboot commands for communications from desktops and then we will venture into how to code  an actual hello world application, and conversion application using Eclipse. <br /><br />We will close the presentation with the possibilities and how to make a great application, UI layouts and how to earn money using AdMobs."},
  
  {:speaker=>"Micah Martin",
    :title => "Limelight",
    :description => "Limelight is Ruby on the desktop.  Build applications with multiple windows, or just one window.  Take control of the desktop, or play nicely with the desktop.  Create fun animated games, or productive business apps.  Develop rich internet applications, or unwired apps to make you rich.  Publish your apps on the internet, or keep them for you and your friends.   Do all this, writing nothing but Ruby code, in Limelight."},
  
  {:speaker=>"Ji Lucas",
    :title => "Google Map, AppEngine and Flex",
    :description => "I want to present how we can deploy flex app into AppEngine. I will show flex app that gets local event list from EventBrite and patch event data into Google Map and how we can use AppEngine to deploy into Cloud."},
  
  {:speaker => "Kevin Gisi",
    :title => "Use Git Like a Boss",
    :description => "Move out Subversion; there's a new man in town. Learn how a decentralized version control system can help make your workflow easier, regardless of what language you use. We'll walk through how to manage a project using Git, and use some branching, tagging, recovery, and a host of other features along the way. Come see how easy it is to branch and merge without the usual headaches."},
  
  {:speaker=>"Marc Temkin",
    :title => "WPF Base Camp",
    :description => "This hands-on presentation is meant to introduce the audience to XAML as used in WPF and Silverlight along with essential code in C# and VB.NET.<br /><br />The talk will concentrate on the visual aspect of WPF and will demonstrate the use of layout, controls, styles and data-binding.  And we will transfer XAML from WPF to Silverlight to show the common features of these platforms.<br /><br />At the end of this talk the active participant should have a good sense of how to use WPF and Silverlight for their new and updated User-Interface requirements."},
  
  {:speaker=>"Ola Bini",
    :title => "Ioke - A folding language",
    :description => "Ioke is a new language, an experiment to see how expressive a language can be. It's a language for the JVM influenced by Io, Self, Smalltalk, Lisp and Ruby. It supports a prototype based object oriented system, is homoiconic, supports high level methods and macros and makes it easy to build DSLs and new abstractions from scratch.<br /><br />The presentation will first talk about the motivation for a new language, then talk about some of the more interesting features of Ioke, including the object system, the macro system and java integration features. It will also talk about how Ioke can be used in conjunction with other languages in a polyglot programming style."},
  
  {:speaker=>"Scott Parker",
    :title => "Making the web \"F#\"unctional with BistroMVC",
    :description => "Intrigued by functional programming in F#? Considering alternatives to WebForms or ASP MVC? Perhaps you're lured to the very tip of the bleeding edge of web development in .NET? This lively session starts with a brief overview of how F# works before we dive into writing web apps with BistroMVC, a NDjango-powered framework that is BFFs forever with F#. Don't worry if you don't recognize half the words in this description - all that's required is a basic understanding of the web and an open mind."},
  
  {:speaker=>"Chad Pry",
    :title => "Geospatial Information Systems (GIS): building applications with geospatial databases and resources.",
    :description => "The use of geospatial information has skyrocketed over the last few years.  This can likely be credited to new device hardware, mobile development integration, and the new offering of locational aware data  With this change, there are a new range of databases, frameworks, and tools available to developers.<br /><br />This talk is to explain the term GIS and what locational aware means for a developer.  The talk will start off with an introduction to terminology, followed by a definition of geospatial structures, an explanation of postgres/postgis as a datastore, and finally shapefiles, conversion tools, and a sample application.  I plan to convey an idea of how to structure locational data within the application as well as use of the data within the application."},
  
  {:speaker=>"Tim Murphy",
    :title => "Leverage Open XML To Write Powerful Document Gen",
    :description => "Document generation can be a powerful tool for developing products such as marketing aid or contacts.  At the same time it can be challenging to develop applications that give you full control of the Office object model and do not require huge server farms to run.  Open XML offers a solution to both of these problems.  This talk will give details that will give you a head start using Open XML SDK 2.0 to customer ready PowerPoint and Word documents."},
  
  {:speaker=>"Wade Wegner",
    :title => "Using the Azure AppFabric with Surgical Skill",
    :description => "Note: Note 100% sure that this is the exact title I'd want to use, but it gets close.<br /><br />The premise of the talk is to show how you can use the capabilities of the Windows Azure AppFabric to gracefully extend applications into the cloud OR extend cloud-based applications by leveraging on-premises assets.  The Azure AppFabric is an extremely powerful platform, but largely unknown.  I want to pull back the veil through demonstration of different solutions - all written from scratch."},
  
  {:speaker=>"James Curtis",
    :title => "Real world jQuery for the rest of us",
    :description => "This talk is 1 of 2 from Solid Code Studios. The second session is to be submitted by Chris Pritchard from SCS on the backend on this application using the Service Bus.<br /><br />My talk is about using jQuery to enhance the User Experience of a site for clients.  We'll get into using jQuery with ASP.NET MVC 2, proper CSS design to work with jQuery, and how to populate data from .NET into jQuery.  This web app also sits atop a Service Bus platform (Session 2).  We'll be using a real world example that was recently done."},
  
  {:speaker=>"Jim Suchy",
    :title => "iPhone on Rails",
    :description => "You don't have to use Objective-C and Xcode in order to build a killer application for the iPhone.  With the full-featured Safari browser, building web applications that act like a native iPhone application is not only possible, but it can be easy to do.  We will take a sample Rails application and make it sparkle on the iPhone."},
  
  {:speaker=>"Clark Sell",
    :title => "XCopy Deployments, Really? Intro to MSDepoy",
    :description => "Did you know we can managed a web.config file now?  Did you know you can use Powershell to do a web deployment? It doesn't have to be hard.  In this session, Clark will intro Microsoft's MsDeploy and the WebDeployment Features."},
])

Speaker.create([
{:full_name=>"Rockford Lhotka", :email =>"rocky@lhotka.net", :homepage=>"http://www.lhotka.net", :biography =>"Rockford Lhotka is the creator of the popular CSLA .NET development framework, and is the author of numerous books, including Expert C# 2008 Business Objects and Expert VB 2008 Business Objects. He is a Microsoft Regional Director and MVP. He contributes to several major magazines and regularly presents at major conferences around the world. Rockford is the Principal Technology Evangelist for Magenic (www.magenic.com), a company focused on delivering business value through applied technology and one of the nation's premiere Microsoft Gold Certified Partners." 

}, 
{:full_name=>"Marc Temkin", :email =>"mtemkin@speakeasy.net", :homepage=>"", :biography =>"Marc Temkin teaches computer programming in the Interactive Arts & Media Department of Columbia College Chicago. He has been active as Vice-Chair of the Chicago Chapter of the ACM (www.chicagoacm.org) where he has presented speakers from Electronic Arts, Google, Microsoft, PBS and others. And he spoke at last year's Code Camp on Data Visualization with WPF.<br/><br/>Marc also works on several projects split between User Interface Oriented to data mining and package automation." 

}, {:full_name=>"Ola Bini", :email =>"Ola.Bini@gmail.com", :homepage=>"", :biography =>"" 

},
{:full_name=>"Jay Schmelzer", :email =>"jaysch@microsoft.com", :homepage=>"", :biography =>"Jay Schmelzer is a Group Program Manager on the Visual Studio Team at Microsoft. Jay and his team are responsible for the Visual Studio design-time tools and runtime components used to build applications that leverage Microsoft Office client and server products, many of the Visual Studio features vital to end-to-end application development experience including Data Design-time, building and consuming WCF services and Deployment, as well as the application programmability and extensibility available in Visual Studio Tools for Applications. Prior to joining Microsoft, Jay was a partner with a leading consulting firm and specialized in the design and development of enterprise applications. Jay has authored several articles and books on application development and is a frequent speaker at application development conferences." 

}, {:full_name=>"Micah Martin", :email =>"micah@8thlight.com", :homepage=>"http://blog.8thlight.com/micah", :biography =>"Micah Martin is a Software Craftsman and President of 8th Light, Inc. He is co-author of the book \"Agile Principles, Patterns, and Practices in C#\" and lead developer of the open source FitNesse tool. He has 10 years of experience consulting, training, and developing software focusing on agile development practices. Since 2006, Micah has been working almost exclusively with Ruby, stressing it to the edge, developing enterprise systems." 

}, {:full_name=>"Ryan Briones", :email =>"ryan.briones@brionesandco.com", :homepage=>"http://brionesandco.com/ryanbriones", :biography =>"Ryan is a practicing software craftsman currently living and working in Chicago, IL. In nearly a decade Ryan has designed systems for ISPs, non-profit corporations and web startups. For the last 4 years Ryan has had the pleasure of using Ruby almost exclusively and gives back to the Ruby ecosystem whenever possible. Ryan works as a Consultant at Obtiva, a life-long learner and is on his way to becoming a full-blown coffee snob." 

}, {:full_name=>"Damon Payne", :email =>"damon@damonpayne.com", :homepage=>"http://www.damonpayne.com", :biography =>"Damon Payne is a life-long geek, Microsoft MVP, father, husband, audio/video nut, atheist, philosopher, wine drinker, and short order cook who lives in the unexplored swamps near Milwaukee. Damon works mostly in the areas of Smart Client software (including Silverlight, WPF, and Windows Phone 7) , visual tools, and Solution Architecture; he also does web programming and has professional interests in parallel programming, agile processes, and requirements gathering.<br/><br/>Damon is currently the Principal Software Architect at Big Hammer Data. You can find steady updates and detailed articles at www.damonpayne.com." 

}, {:full_name=>"Colin Jones", :email =>"trptcolin@gmail.com", :homepage=>"http://blog.8thlight.com/colin", :biography =>"Colin is a Software Craftsman at 8th Light, where he works primarily in Ruby and Java. He is also very interested in functional programming, in languages like Clojure. Prior to coming to 8th Light, he built web applications in Ruby on Rails and worked as a freelance trumpet player and teacher. During graduate school at the University of Georgia, he was a lead teaching assistant at the School of Music and won The Outstanding Teaching Award for his performance in the classroom." 

}, {:full_name=>"Aaron Erickson", :email =>"aaron.c.erickson@gmail.com", :homepage=>"http://nomadic-developer.com", :biography =>"I am Aaron Erickson, ThoughtWorker, Agilist, frequent code camper. I love F# and pushing the edge with C#." 

}, {:full_name=>"Justin Martin", :email =>"justin@8thlight.com", :homepage=>"http://8thlightapprenticeship.blogspot.com", :biography =>"Justin attended U of I Engineering and is currently in his apprenticeship at 8th Light under Micah Martin. He has done several internships working at 8th Light and Object Mentor over the past few years. He also spent some time working at a U of I start-up company before accepting his apprenticeship opportunity." 

}, {:full_name=>"Amanda Laucher", :email =>"alaucher@thoughtworks.com", :homepage=>"", :biography =>"I'm one of the passionate developers at ThoughtWorks. In my free time I write code for non-profits or speak at conferences around the globe. I'm also author of F# in Action. I like to be around other passionate people who can teach me as well." 

}, {:full_name=>"Dean Wampler", :email =>"dean@polyglotprogramming.com", :homepage=>"http://polyglotprogramming.com", :biography =>"" 

}, {:full_name=>"Dave Bost", :email =>"dbost@microsoft.com", :homepage=>"http://davebost.com/blog", :biography =>"Dave Bost is a Developer Evangelist with Microsoft and co-host of the Thirsty Developer Podcast. Dave has been a Software Developer and Solution Architect for over 15-years. Prior to joining Microsoft, Dave cut his technical teeth working with many Fortune-500 companies as a technical mentor and consultant. <br/><br/>Dave started his technical passion back in the days of the Commodore-64 when he wrote his first assembly-language program that produced a hot-air balloon to sail across his Commodore 1701 Video Monitor. From there, he was hooked. This led to a Computer Science degree at Northern Illinois University, where he soon started his professional career in the Unix/C world and a short time later, starting his Microsoft developer career. For the past decade, Dave has spent most of his time building web-based applications for the Microsoft platform. As a technologist, Dave doesn't spend all his time in the Microsoft world as he likes to spend his time dabbling with the latest technologies, tools and movements coming out of the software industry. <br/><br/>Outside of his professional life, Dave enjoys discovering new music with his Zune Pass, defending the universe against 13-year olds on Xbox Live, and playing golf (whenever his wife lets him). You can read Dave's blog at http://davebost.com/blog or listen to the Thirsty Developer Podcast at http://thirstydeveloper.com." 

}, {:full_name=>"Eduardo Scoz", :email =>"eduardoscoz@gmail.com", :homepage=>"http://escoz.com", :biography =>"I'm a software engineer/consultant/agilist based in Chicago, IL. With over 15 of experience developing business applications for the web. I currently work for Redpoint Technologies as a Senior Engineer and Agile Coach. During the last 5 years, Eduardo has worked on many different platforms, like .NET, Ruby on Rails, Adobe Flex, Objective-C and now MonoTouch." 

}, {:full_name=>"Lance Larsen", :email =>"mail@lancelarsen.com", :homepage=>"http://www.lancelarsen.com", :biography =>"Lance is an enthusiastic and knowledgeable senior .NET technology architect / independent consultant focusing on the latest Microsoft .NET technologies. <br/><br/>Lance is also the President of MADdotNET, the Madison WI .NET User Group. Come up and see us! (www.MADdotNET.com) <br/><br/>Lance had the pleasure to attend the Microsoft MIX 2010 conference and sees the huge potential that Windows Phone 7 Series development offers to the development community --and-- is very much looking to replace his evil tainted iPhone as soon as possible with a nice shiny Windows Phone. :)<br/><br/>Lance balances his career, hobbies and his family life, including raising his two beautiful and way too smart for his own good, 6 and 8 year old daughters.<br/><br/>www.lancelarsen.com | @lancelarsen (twitter)" 

}, {:full_name=>"Lwin Maung & Min Maung", :email =>"lmaung@expertsonit.com", :homepage=>"http://www.androidtechnical.info", :biography =>"We won the Android category with our application""A4D Utility"" at the Hack-a-thon organized by Tech In The Middle on March 6th. It is a utility which enable you to flash custom OS on a majority of Android devices.<br/><br/>Lwin started Experts on IT, Inc., a local Consulting Firm, in 2006. He is a expert in databases, LAN/WAN setup and security, web design, and VoIP services. His languages of choice are VB.net and Java. <br/><br/>Min is a software engineer at Paylocity, a payroll and HR company in Arlington Heights. He is an expert in software design, and databases. His languages of choice are C#.net and java." 

}, {:full_name=>"Ji Lucas", :email =>"jikimlucas@me.com", :homepage=>"http://www.jikimlucas.com", :biography =>"10 years experiences on IT. Specialized in Java, .net, com+, as3, flex, GWT. Android. Currently, I am a team lead two development teams in Pearson Education." 

}, {:full_name=>"Kevin Gisi", :email =>"kevin@kevingisi.com", :homepage=>"http://www.kevingisi.com", :biography =>"Kevin W. Gisi is a Ruby developer from Eau Claire, Wisconsin. He is the co-founder of the Eau Claire Ruby User Group, and an active evangelist of the Ruby language at the University of Wisconsin - Eau Claire. The Rails Rumble 2008 \"Most Innovative\" prize was awarded to Kevin for his submission, designed to improve web accessibility for visually impaired users; in 2009, Kevin was invited to join the Rails Rumble core development team." 

},
 {:full_name=>"Scott Parker", :email =>"scott.p.parker@gmail.com", :homepage=>"", :biography =>"Scott Parker is a generally okay human being. A software consultant since 2005, he has a near-unhealthy obsession with writing clean, maintainable code for great clients. He has delivered projects in C# & IronPython, as well as several other languages he'd rather forget.<br/><br/>In his free time Scott experiments with a wide variety of open-source projects in .NET as well as Ruby & Ioke. He works for Obtiva, lives with his wife in Oak Park, IL, and loves to play board games."

}, {:full_name=>"Chad Pry", :email =>"cpry@obtiva.com", :homepage=>"" , :biography => ""

}, {:full_name=>"Tim Murphy", :email =>"twmurph@yahoo.com", :homepage=>"http://geekswithblogs.net/tmurphy", :biography =>"Tim Murphy is a Technical Specialist at PSC Group, LLC (www.psclistens.com). He has been an IT Consultant for the past eleven years specializing in Microsoft technologies and Software Architecture. Tim is a co-leader of the Chicago Architects Group as well as a contributing author of the book The Definitive Guide to the Microsoft Enterprise Library. Recently he has also spoken at the nPlus1 ArcSummit in Chicago and appeared on the Thirsty Developer podcast." 

}, {:full_name=>"Wade Wegner", :email =>"wwegner@microsoft.com", :homepage=>"http://blog.wadewegner.com", :biography =>"Wade Wegner is an architect in the Developer & Platform Evangelism division at Microsoft, tasked to collaborate with organizations in the advanced and emergent areas of enterprise architecture, SOA, Web 2.0, and cloud computing, as well as to support decision makers on defining technology adoption strategies. Drawing on his deep background in IT consulting, Wade enjoys helping customers create value from using objective and pragmatic approaches to define IT strategies and solution architectures." 

}, {:full_name=>"James Curtis", :email =>"james.curtis@solid-code.com", :homepage=>"http://www.jwc3.net", :biography =>"Solid Code Studios is a brain development company formed between two friends who just happen to be pretty good at this .NET stuff. I am mainly known for my SharePoint development work, but I do like to show off my User Interface skills whenever possible. I am from the Indianapolis, Indiana, area and currently work full time for Sogeti USA. I have taught .NET and SQL Databases two nights per week at TechSkills in Indianapolis for the last 4 years. You can reach me by way of my blog if you have any questions." 

}, {:full_name=>"Jim Suchy", :email =>"jim@8thlight.com", :homepage=>"http://blog.8thlight.com/jim", :biography =>"Jim is a software craftsman at 8th Light where he is able to share his passion for producing high-quality, usable software." 

}, {:full_name=>"Clark Sell", :email =>"csell@microsoft.com", :homepage=>"http://csell.net", :biography => "Microsoft | Senior Developer Evangelist<br/><br/>Name a role in the software industry, and Clark has probably played it. He started as a Y2K tester and has since worked as a developer, lead, \"build monkey,\" solutions architect and product manager. His professional sweet spot however, lies in designing and building software solutions that make life easier � there's no chance for boredom and constant opportunities for growth. Clark is MCSD certified and received top Microsoft honors with the Circle of Excellence Award. He's a graduate of Western Illinois University and before joining Microsoft in 2005, he served as a solutions architect at Allstate Insurance Company. As a senior developer evangelist and Visual Studio team system ranger, Clark brings a good dose of humor and a zest for life to the podium. You can hear Clark's technical musings on \"The Smackdown\" at DeveloperSmackdown.com and The Thirsty Developer podcast � or find him getting grease under his nails in the garage. Clark's a muscle car fanatic who's currently finishing a body-off restoration of his 1970 Chevrolet Camaro." },

])