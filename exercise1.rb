project = { 
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 14, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    },
    {description: "Wrap up",
     due_date: "December 1, 2019"
    }
  ]
}
# WEIRD AND CONFUSING BUT WORKS
# y = 0
# project[:committee].each do |name|
#     x = -2 + y #skip to next set
#     3.times do
#         project[:steps][x][:person] = name
#         x += 3
#     end
#     y += 1
# end

# SLIGHTLY LESS WEIRD, HOW DO I DO THIS W/O COUNTERS
x = 0
project[:steps].each do |new_name|
    if x >2
        x = 0
    end
    new_name[:person] = project[:committee][x] 
  # puts 1 name, iterates counter to next name and puts another name
  x += 1
end

# loop through commitee array,
# at first name, loop through the steps, for every 1st add 3 and do next