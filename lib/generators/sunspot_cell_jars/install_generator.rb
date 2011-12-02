module SunspotCellJars
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def self.source_root
        File.dirname(__FILE__) + "/templates"
      end

      def install_sunspot_cell_jars
        if File.exists?('solr')

          Dir.mkdir("solr/lib") unless File.exists?("solr/lib")

          files = %w{apache-mime4j-core-0.7.jar
            apache-mime4j-dom-0.7.jar
            apache-solr-cell-3.5-SNAPSHOT.jar
            asm-3.1.jar
            bcmail-jdk15-1.45.jar
            bcprov-jdk15-1.45.jar
            boilerpipe-1.1.0.jar
            commons-compress-1.2.jar
            dom4j-1.6.1.jar
            fontbox-1.6.0.jar
            icu4j-4_8_1_1.jar
            jempbox-1.6.0.jar
            metadata-extractor-2.4.0-beta-1.jar
            netcdf-4.2-min.jar
            pdfbox-1.6.0.jar
            poi-3.8-beta4.jar
            poi-ooxml-3.8-beta4.jar
            poi-ooxml-schemas-3.8-beta4.jar
            poi-scratchpad-3.8-beta4.jar
            rome-0.9.jar
            tagsoup-1.2.1.jar
            tika-core-0.10.jar
            tika-parsers-0.10.jar}

            files.each do |file|
              copy_file file, "solr/lib/#{file}"
            end
        else
          say "You need to have a solr directory created in your rails root before I can proceed"
        end
      end
    end
  end
end
