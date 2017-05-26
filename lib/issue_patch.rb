require_dependency 'issue'

module IssuePatch


	def self.included(base)
        base.send(:extend, ClassMethods)
        base.send(:include, InstanceMethods)

	end


    module ClassMethods

    end

    module InstanceMethods
        def percentage=(val)
            write_attribute(:percentage, val)



        end
    end

end

Rails.configuration.to_prepare do
    #unless Issue.included_modules.include? IssuePatch
        Issue.send(:include, IssuePatch)
    #end
end