# load 'script/siena_talks.rb'

siena = Refinery::User.find_by(username: "siena")

realm_talk = Talk.create!(
  refinery_user: siena,
  title: "Gotta Persist 'Em All: Realm as Replacement for SQLite",
  description: "Realm is a new player on mobile database scene, and acts as a replacement for SQLite on Android and Core Data on iOS by providing a database and an easy-to-use object-relational mapping-like (ORM) interface. Learn how to use it in your own projects and how it compares to working with SQLite in a beginner-friendly sample app with Pokémon.",
  slides_link: "http://www.slideshare.net/SienaAguayo/gotta-persist-em-all-realm-as-replacement-for-sq-lite-46956020"
  )

Appearance.create!(
  talk: realm_talk,
  event_name: "Droidcon Montreal",
  event_link: "http://www.droidcon.ca/",
  date: Date.new(2015,4,10)
  )

i18n_talk = Talk.create!(
  refinery_user: siena,
  title: "Fearless Internationalization and Localization Across the Nations",
  description: "Many people are intimidated by localization (l10n) and internationalization (i18n) but they don’t have to be—Android provides many tools out of the box to aide you in global domination. Learn what to watch out for while coding your app that will make your life easier once you receive localized content. We’ll cover alternate resources, strings files, date and number formatters and other tips from Android Studio, Google, and third parties that will turn you into an i18n and l10n champion.",
  slides_link: "http://www.slideshare.net/SienaAguayo/fearless-internationalization-and-localization-across-the-nations"
  )

Appearance.create!(
  talk: i18n_talk,
  event_name: "Droidcon NYC",
  event_link: "http://droidcon.nyc",
  video_link: "https://www.youtube.com/watch?v=Z51wN9wCao0",
  date: Date.new(2015,6,27)
  )

Appearance.create!(
  talk: i18n_talk,
  event_name: "Bay Area Android Developer Meetup",
  event_link: "http://www.meetup.com/bayareaandroid/",
  video_link: "https://realm.io/news/siena-aguayo-android-localization/",
  date: Date.new(2015,9,22)
  )
