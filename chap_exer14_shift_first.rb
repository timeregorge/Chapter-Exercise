contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
            

contacts = {"Joe Smith" => {}}

#contacts["Joe Smith"] = {mail:  contact_data.first.shift, address: contact_data.first.shift, phe_num: contact_data.first.shift }
#contacts["Sally Johnson"] = {mail: contact_data.last.shift, address: contact_data.last.shift, phe_num: contact_data.last.shift}
#puts contacts
/____________________________above own answer______________________________________/
hs = [:mail, :address, :number]
contacts.each do |k, v|

	hs.each do |p|

	v[p] = contact_data.shift 

	end
end
puts contacts
