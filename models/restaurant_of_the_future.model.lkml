# Define the database connection to be used for this model.
connection: "restoffuture"

# include all the views
include: "/views/**/*.view"
include: "/restaurant_of_the_future.dashboard.lookml"
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: restaurant_of_the_future_default_datagroup {
  sql_trigger: SELECT MAX(id) FROM etl_log;;
  #max_cache_age: "1 hour"
}

persist_with: restaurant_of_the_future_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Restaurant-of-the-future"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: ledger_inventory_raw {}

explore: sales_detail{
  join: restaurants_rof {
    type: inner
    relationship: many_to_one
    sql_on: ${sales_detail.store} = ${restaurants_rof.store_number} ;;
  }
}

explore: iot {}

explore: restaurants_rof {}

explore: menu {}

explore: restaurants {}

explore: products {}

explore: salesbybrand {}

explore: salesbybranddaily {}

explore: salesbycategory {}

explore: salesbycategorydaily {}

explore: salesbydepartment {}

explore: salesbydepartmentdaily {}

explore: salesbyregion {}

explore: salesbyregiondaily {}

explore: salesbyregionupc {}

explore: salesbyregionupcdaily {}

explore: salesbystore {}

explore: salesbystoredaily {}

explore: salesbyupc {}

explore: salesbyupcdaily {}

explore: skuupc {}

explore: state {}

explore: store {}

explore: upcscenario {}

explore: upcstore {}

explore: upcstoresales {}
