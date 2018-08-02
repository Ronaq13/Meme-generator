require 'thor'
require 'httparty'
require 'dotenv'
require 'pry'

Dotenv.load(File.expand_path("~/.generate_meme.env", __FILE__))

module GenerateMeme
    class Cli < Thor
        
        # base_uri 'https://ronreiter-meme-generator.p.mashape.com/meme'
        desc "with TOP_TEXT BOTTOM_TEXT", "this will generate the meme"
        option :font_size
        option :font
        option :meme
        def with(top_text, bottom_text)
            font_size = options[:font_size] ? options[:font_size] : '40'
            font = options[:font] ? options[:font] : 'Impact'
            meme = options[:meme] ? options[:meme] : 'Condescending-Wonka'
            # binding.pry
            response = HTTParty.get("https://ronreiter-meme-generator.p.mashape.com/meme",
            headers:{
                "X-Mashape-Key" => ENV["key"],
                "X-RapidAPI-Host" => "ronreiter-meme-generator.p.rapidapi.com"
            },
            query: {
                top: top_text,
                bottom: bottom_text,
                font: font,
                font_size: font_size,
                meme: meme
            })
            # response = self.class.get(
            #     'https://ronreiter-meme-generator.p.mashape.com/meme',
            #     query: {
            #         top: top_text,
            #         bottom: bottom_text,
            #         font: font,
            #         font_size: font_size,
            #         meme: meme
            #     }
            # )
            # binding.pry
            File.open("#{Time.now.to_i}.jpeg", 'w+') do |f|
                f.write(response.body)
                f.close
            end
        end

        desc "list_all_images", "This will print a list of all images avaliable to generate meme"
        def list_all_images
            response = HTTParty.get "https://ronreiter-meme-generator.p.mashape.com/images",
            headers:{
                "X-Mashape-Key" => ENV["key"],
                "X-RapidAPI-Host" => "ronreiter-meme-generator.p.rapidapi.com",
                "Accept" => "text/plain"
            }
            puts response.body
        end

        desc "list_all_fonts", "This will print a list of all avaliable fonts"
        def list_all_fonts
            response = HTTParty.get "https://ronreiter-meme-generator.p.mashape.com/fonts",
            headers:{
                "X-Mashape-Key" => ENV["key"],
                "X-RapidAPI-Host" => "ronreiter-meme-generator.p.rapidapi.com",
                "Accept" => "text/plain"
            }
            puts response.body
        end
    end
    # binding.pry
end
