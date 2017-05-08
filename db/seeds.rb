# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Trend.destroy_all
Comment.destroy_all


avocado = Trend.create({title: "Avocados Maniacs",
   description: "Avocados have great nutrients that help diets",
   photo_url: "http://s.eatthis-cdn.com/media/images/ext/278532033/avocado-with-pit.jpg" ,
   ref_link: "http://www.eatthis.com/8-reasons-avocado-perfect-weight-loss-food"})

kale = Trend.create({title: "Kale-freaknomics",
  description: "Kale is not just green",
  photo_url: "http://dingo.care2.com/pictures/greenliving/uploads/2013/11/kale-live-443x294.jpg",
  ref_link: "http://www.slate.com/articles/life/low_concept/2012/05/the_all_kale_diet_how_i_stopped_eating_anything_else_.html"})

coconut = Trend.create({title: "Cucko for Coconuts",
  description: "Coconut and their oils are good fats for your system",
  photo_url: "http://img.aws.livestrongcdn.com/ls-article-image-673/cme/cme_public_images/www_livestrong_com/photos.demandstudios.com/getty/article/211/31/513704209_XS.jpg",
  ref_link: "http://www.livestrong.com/article/478461-the-coconut-diet-plan/"})

avocado.comments.create({author: "Eva", body: "Avocado has such good oils.",
  additional_link: "https://www.leaf.tv/articles/how-to-do-an-avocado-diet/"})

kale.comments.create({author: "Eric" , body: "Kale is the new green superfood.",
  additional_link: "http://www.slate.com/articles/life/low_concept/2012/05/the_all_kale_diet_how_i_stopped_eating_anything_else_.html"})

coconut.comments.create({author: "Jeff" , body: "Love me some coconut oil.",
  additional_link: "http://blog.foodnetwork.com/healthyeats/2012/08/10/coconut-diet-101/"})
