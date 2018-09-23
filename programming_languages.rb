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
		
    		hash[names] = {:type => string, :style => [] } if !hash[names] # need to separate the array out so it can be shoveled in separately. This method is replacing the values. 
		
    		hash[names][:style] << styles 
			end
		end
	end	
	hash
end
