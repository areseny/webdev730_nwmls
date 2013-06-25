class Nwmls::Amenity

  attr_accessor :code, :description, :values

  def initialize(options = {})
    self.code = options[:code]
    self.description = options[:description]
    self.values = options[:values]
  end


  def self.find(conditions = {})
    response = evernet_client.call :retrieve_amenity_data, message: { v_strXmlQuery: build_query(conditions) }
    xml_body = response.body[:retrieve_amenity_data_response][:retrieve_amenity_data_result]
    collection = build_collection_from_xml(xml_body)
  end

  def self.build_query(conditions = {})
    xml = Builder::XmlMarkup.new
    xml.instruct!
    xml.EverNetQuerySpecification(:xmlns => "urn:www.nwmls.com/Schemas/General/EverNetQueryXML.xsd") do
      xml.Message do
        xml.Head do
          xml.UserId Evernet::Connection.user
          xml.Password Evernet::Connection.pass
          xml.SchemaName 'NWMLSStandardXML'
        end
        xml.Body do
          xml.Query do
            xml.MLS "NWMLS"
            xml.PropertyType (conditions[:property_type] || 'RESI')
          end
        end
      end
    end
  end

  def self.build_collection_from_xml(xml_body)
    collection = []
    raw = {}
    xml = Nokogiri::XML(xml_body)
    xml.root.children.each do |amenity|
      if amenity.name == 'Amenity'
        code = amenity.at('Code').inner_text
        raw[code] ||= {}
        raw[code][:code] = code
        raw[code][:description] ||= amenity.at('Description').inner_text
        raw[code][:values] ||= {}
        raw[code][:values][amenity.at('Values Code').inner_text] = amenity.at('Values Description').inner_text
      end
    end
    raw.each do |key,values|
      collection << self.new(values)
    end
    collection
  end



  def self.evernet_client
    @@evernet_client ||= Evernet::Connection.new
  end
end
