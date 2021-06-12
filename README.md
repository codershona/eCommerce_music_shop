## Project: eCommerce Music Shop(Flanger MuSiC)

# Ready to deploy in Heroku.

#### Project Can be found in here :
 **[Live version](https://quiet-crag-78953.herokuapp.com/)**

<p align="center">
	
<img src="https://user-images.githubusercontent.com/57604500/121789738-b978ac80-cbd8-11eb-843d-6d2987e5c72a.png" width=1012>
<br />
<h3 align="center">eCommerce Music Shop(Flanger MuSiC)</h3>
</p>


* NOTES :
```
      - Gems added into gemfile ;
      - rails generate simple_form:install ;
      - rails g controller store index ;
      - rails generate devise:install ;
      - rails generate devise User ;
      - rails db:migrate ;
      - rails g migration add_name_to_users name:string ;
      - rails db:migrate;
    * CREATING Instruments :
      - rails g scaffold Instrument brand:string model:string description:text condition:string finish:string title:string price:decimal  ;
      - rails db:migrate ;
      - rails generate uploader Image ;
      - rails g migration add_image_to_instruments image:string ;
      - rails db:migrate ;
      - rails g migration add_user_to_instruments user_id:integer ;
      - rails db:migrate ;
      - left ( rails g devise:views ;)

      Cart and Line Items Setup :

        - rails g scaffold Cart --no-stylesheets --no-javascripts ;
        - rails db:migrate ;
        - rails g scaffold LineItem instrument:references cart:belongs_to ;
        - rails db:migrate ;
        - rails g migration add_quantity_to_line_items ;
        - rails db:migrate ;
        
        * To seeds :
          - rails db:seed ;
      
```
