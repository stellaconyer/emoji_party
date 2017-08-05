# load 'script/siena_talks.rb'

siena = Refinery::User.find_by(username: "siena")
Talk.where(refinery_user: siena).destroy_all

realm_talk = Talk.create!(
  refinery_user: siena,
  title: "Gotta Persist 'Em All: Realm as Replacement for SQLite",
  description: "Realm is a new player on mobile database scene, and acts as a replacement for SQLite on Android and Core Data on iOS by providing a database and an easy-to-use object-relational mapping-like (ORM) interface. Learn how to use it in your own projects and how it compares to working with SQLite in a beginner-friendly sample app with Pokémon.",
  slides_link: "https://speakerdeck.com/sienatime/gotta-persist-em-all-realm-as-replacement-for-sqlite"
  )

Appearance.create!(
  talk: realm_talk,
  event_name: "Droidcon Montreal",
  event_location: "Montreal, Canada",
  event_link: "http://www.droidcon.ca/",
  date: Date.new(2015,4,10)
  )

Appearance.create!(
  talk: realm_talk,
  event_name: "Realm Meetup",
  event_location: "San Francisco, CA, United States",
  event_link: "http://www.meetup.com/realm-sf/",
  date: Date.new(2016,5,5)
  )

i18n_talk = Talk.create!(
  refinery_user: siena,
  title: "Fearless Internationalization and Localization Across the Nations",
  description: "Many people are intimidated by localization (l10n) and internationalization (i18n) but they don’t have to be—Android provides many tools out of the box to aide you in global domination. Learn what to watch out for while coding your app that will make your life easier once you receive localized content. We’ll cover alternate resources, strings files, date and number formatters and other tips from Android Studio, Google, and third parties that will turn you into an i18n and l10n champion.",
  slides_link: "https://speakerdeck.com/sienatime/fearless-internationalization-and-localization-across-the-nations"
  )

Appearance.create!(
  talk: i18n_talk,
  event_name: "Droidcon NYC",
  event_location: "New York, NY, United States",
  event_link: "http://droidcon.nyc",
  video_link: "https://www.youtube.com/watch?v=Z51wN9wCao0",
  date: Date.new(2015,6,27)
  )

Appearance.create!(
  talk: i18n_talk,
  event_name: "Bay Area Android Developer Meetup",
  event_location: "San Francisco, CA, United States",
  event_link: "http://www.meetup.com/bayareaandroid/",
  video_link: "https://realm.io/news/siena-aguayo-android-localization/",
  date: Date.new(2015,9,22)
  )

Appearance.create!(
  talk: i18n_talk,
  event_name: "DroidKaigi",
  event_location: "Tokyo, Japan",
  event_link: "https://droidkaigi.github.io/",
  video_link: "https://www.youtube.com/watch?v=e4RCTgZq2Cs",
  date: Date.new(2016,2,19)
  )

refactoring_talk = Talk.create!(
  refinery_user: siena,
  title: "Don't reset --hard: Strategies for Tackling Large Refactors",
  description: "How many times have you started an ambitious refactor only to get lost and end up doing a git reset --hard? Android libraries are updated constantly, sometimes with breaking changes, and it can be tough to keep up. Maybe you want to try several new technologies at once as part of your refactor. This talk will teach you some techniques for refactoring your code in a way that makes you not get so overwhelmed that you have to start over.",
  slides_link: "https://speakerdeck.com/sienatime/dont-reset-hard-strategies-for-tackling-large-refactors"
  )

Appearance.create!(
  talk: refactoring_talk,
  event_name: "DroidKaigi",
  event_location: "Tokyo, Japan",
  event_link: "https://droidkaigi.github.io/",
  date: Date.new(2017,3,9)
  )

Appearance.create!(
  talk: refactoring_talk,
  event_name: "Droidcon Boston",
  event_location: "Boston, MA, United States",
  event_link: "http://www.droidcon-boston.com/",
  date: Date.new(2017,4,11)
  )
