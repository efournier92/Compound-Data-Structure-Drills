#PART_01######################################################################

PEOPLE =
{
  "Alia O'Conner PhD" => {
         "phone" => "538.741.1841",
       "company" => "Leuschke-Stiedemann",
      "children" => [
          "Simone",
          "Cindy",
          "Jess"
      ]
  },
           "Ike Haag" => {
         "phone" => "(661) 663-8352",
       "company" => "Carter Inc",
      "children" => [
          "Joe",
          "Ofelia",
          "Deron"
      ]
  },
       "Brian Heller" => {
         "phone" => "1-288-601-5886",
       "company" => "O'Conner Group",
      "children" => [
          "Renee"
      ]
  },
       "Maryse Johns" => {
         "phone" => "218-571-8774",
       "company" => "Kuhlman Group",
      "children" => [
          "Domenick",
          "Trycia"
      ]
  },
  "Dr. Adela DuBuque" => {
        "phone" => "1-203-483-1226",
      "company" => "Heidenreich, Nitzsche and Dickinson"
  }
}
FRM = "*****************************************************************"
LNE = "-----------------------------------------------------------------"
puts "#{FRM}\nDETAILS ABOUT 'PEOPLE' HASH\n#{FRM}"

# Number of people in hash `people` (excluding children)
number_of_people = PEOPLE.count
puts "TOTAL PEOPLE = #{number_of_people}\n#{LNE}"

# Names of all people in hash `people`
puts "NAMES OF PEOPLE:"
puts PEOPLE.keys
puts LNE

# Output Alia O'Conner PhD's phone number
alia_phone = PEOPLE["Alia O'Conner PhD"]["phone"]
puts "ALIA O'CONNER'S PHONE NUMBER IS #{alia_phone}\n#{LNE}"

# Number of children Brian Heller has
heller_children = PEOPLE["Brian Heller"]["children"].count
print "BRIAN HELLER HAS #{heller_children} "
if heller_children == 1
  puts "CHILD"
else
  puts "CHILDREN"
end
puts LNE

# Company Dr. Adela DuBuque works for
adela_company = PEOPLE["Dr. Adela DuBuque"]["company"]
puts "DR. ADELA DUBUQUE WORKS FOR #{adela_company.upcase}\n#{LNE}"

# List all people who have children
puts "PEOPLE WITH CHILDREN:"
PEOPLE.each do |name|
  if PEOPLE[name[0]].include?("children")
    puts name[0]
  end
end
puts LNE

# List all people who do not have children
puts "PEOPLE WITHOUT CHILDREN:"
PEOPLE.each do |name|
  unless people[name[0]].include?("children")
    puts name[0]
  end
end
puts LNE

# Name of Brian Heller's child
heller_child = PEOPLE["Brian Heller"]["children"][0]
puts "BRIAN HELLER'S CHILD IS NAMED #{heller_child.upcase}\n#{LNE}"

# Name of Maryse Johns' first child
johns_first_child = PEOPLE["Maryse Johns"]["children"][0]
puts "MARYSE JOHNS' FIRST CHILD IS NAMED #{johns_first_child.upcase}\n#{LNE}"

# Update hash with name of Dr. Adela DuBuque's new baby Tomas
PEOPLE["Dr. Adela DuBuque"]["children"] = ["Tomas"]
puts "DR. DUBUQUE HAS A NEW BABY NAMED \
#{people["Dr. Adela DuBuque"]["children"][0].upcase}\n#{LNE}"

#PART_02######################################################################

PEOPLE_HASHES =
[
  {
         "Bernard Feil" => {
             "phone" => "(880) 434-0630",
           "company" => "Maggio Inc",
          "children" => [
              "Nikki"
          ]
      },
          "Ruby Hessel" => {
             "phone" => "1-467-852-4981",
           "company" => "Kemmer Inc",
          "children" => [
              "Sydney"
          ]
      },
          "Savanah Toy" => {
             "phone" => "440-632-0287",
           "company" => "Hudson, Stehr and Lind",
          "children" => [
              "Garth"
          ]
      },
      "Casandra Kemmer" => {
            "phone" => "1-515-759-7470",
          "company" => "Davis, Bernier and Hermann"
      },
             "Edd Rath" => {
            "phone" => "(522) 829-3164",
          "company" => "Mosciski LLC"
      }
  },
  {
         "Dagmar Brakus" => {
             "phone" => "1-881-313-1173",
           "company" => "Mitchell, Schmitt and Haley",
          "children" => [
              "Reuben"
          ]
      },
         "Einar Effertz" => {
            "phone" => "(265) 857-5141",
          "company" => "Pfeffer, Klocko and Von"
      },
      "Dr. Sigrid Nader" => {
             "phone" => "707.762.7870",
           "company" => "Weissnat, Hayes and Dickinson",
          "children" => [
              "Israel",
              "Elyse",
              "Wilfredo"
          ]
      }
  }
]
puts "#{FRM}\nDETAILS ABOUT 'PEOPLE_HASHES' DATA STRUCTURE\n#{FRM}"

# Number of people in first set of people
people_in_first = PEOPLE_HASHES[0].count
puts "THERE ARE #{people_in_first} PEOPLE IN THE FIRST SET"

# Number of people in second set of people
people_in_second = PEOPLE_HASHES[1].count
puts "THERE ARE #{people_in_second} PEOPLE IN THE SECOND SET\n#{LNE}"

# Print Ruby Hessel's phone number
ruby_phone = PEOPLE_HASHES[0]["Ruby Hessel"]["phone"]
puts "RUBY HESSEL'S PHONE NUMBER IS #{ruby_phone}\n#{LNE}"

# List names of Dr. Sigrid Nader's children
puts "DR. SIGRID NADER'S CHILDREN ARE:"
puts PEOPLE_HASHES[1]["Dr. Sigrid Nader"]["children"]
puts LNE

# Name of Bernard Feil's child
feil_child = PEOPLE_HASHES[0]["Bernard Feil"]["children"][0]
puts "BERNARD FEIL'S CHILD IS NAMED #{feil_child.upcase}\n#{LNE}"

#  What company does Casandra Kemmer work for?
casandra_company = PEOPLE_HASHES[0]["Casandra Kemmer"]["company"]
puts "CASANDRA KEMMER WORKS FOR #{casandra_company.upcase}\n#{LNE}"

#  Who are all the people in the first set that have an `m` in their company names?
company_m_capital = []
company_m_lowercase = []
PEOPLE_HASHES[0].each do |name|
  if PEOPLE_HASHES[0][name[0]]["company"].include?('m')
    company_m_lowercase << name[0]
  elsif PEOPLE_HASHES[0][name[0]]["company"].include?('M')
    company_m_capital << name[0]
  end
end
puts "PEOPLE FROM FIRST SET WITH 'm' IN COMPANY NAME:"
puts company_m_lowercase
puts LNE
puts "PEOPLE FROM FIRST SET WITH 'M' IN COMPANY NAME:"
puts company_m_capital
puts FRM
