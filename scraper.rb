require 'wikidata/fetcher'

en = WikiData::Category.new( 'Category:Members of the House of Representatives (Egypt)', 'en').member_titles
     # | WikiData::Category.new( 'Category:Members of the Parliament of Egypt', 'en').member_titles 
ar = WikiData::Category.new( 'تصنيف:أعضاء مجلس النواب المصري 2015', 'ar').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en, ar: ar }, output: false)

