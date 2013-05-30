module Nwmls
  module ActsAsNwmlsListing
    extend ActiveSupport::Concern

    BOOLEAN_ATTRIBUTES = 
          [
            :bus_line_nearby,
            :publish_to_internet,
            :senior_exemption,
            :show_address_to_public,
            :show_map_link_to_public,
          ]


    module ClassMethods
      def acts_as_nwmls_listing(options = {})
        include ActiveModel::Model

        cattr_accessor :property_type
        self.property_type = options[:property_type]

        cattr_accessor :attribute_mappings
        self.attribute_mappings = options[:attribute_mappings]
        def self.attributes
          self.attribute_mappings.values.collect { |v| v.underscore.parameterize('_').to_sym }
        end

        def self.encoded_attributes
          [:status]
        end

        def self.processed_attributes
          BOOLEAN_ATTRIBUTES + self.encoded_attributes
        end

        def self.readable_attributes
          self.attributes - self.processed_attributes
        end

        attr_writer(*self.attributes)
        attr_reader(*self.readable_attributes)

        def self.find(conditions = {}, filters = [])
          if conditions.is_a?(Hash)
            conditions.merge!(:property_type => self.property_type)
          end
          super(conditions, filters)
        end

      end
    end

    BOOLEAN_ATTRIBUTES.each do |method|
      define_method method do
        case instance_variable_get("@#{method}")
        when 'Y' then true
        when 'N' then false
        end
      end
      alias_method "#{method}?", method
    end

#    def publish_to_internet
#      @publish_to_internet == 'Y'
#    end
#    alias_method :publish_to_internet?, :publish_to_internet
    #


  end
end
