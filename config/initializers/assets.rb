# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
<<<<<<< HEAD

Rails.application.config.assets.precompile += %w( sb-admin-2.min.css )
Rails.application.config.assets.precompile += %w( sales.css )

=======
Rails.application.config.assets.precompile += %w( sb-admin-2.min.css )
>>>>>>> 9b865dd25d475a11581d03d08eb455fb0adf133d
