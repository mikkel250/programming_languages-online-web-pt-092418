require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}



def reformat_languages(languages)
	hash = {}
	languages.each do |styles, hash1|
		hash1.each do |names, hash2|
			hash2.each do |types, string|
		# need to wait to do this until I've added the name and inner hash
		hash[names] = {:type => string, :style => [styles]}
		#hash[names][:style] = styles
			end
		end
	end	
#	binding.pry
	hash
end