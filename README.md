### TEA SUBSCRIPTION 

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-this-project">About This Project</a>
      <ul>
        <li><a href="#tools-used">Tools Used</a></li>
      </ul>
    </li>
    <li>
      <a href="#how-to-use-tea-subscription">How to Use Tea Subscription</a>
      <ul>
        <li><a href="#download-this-repo">Download this Repo</a></li>
        <li><a href="#api-endpoints">API Endpoints</a></li>
        <li><a href="#testing">Testing</a></li>
      </ul>
  </ol>  
</details>

<!-- ABOUT THIS PROJECT -->
### About This Project
---
Tea Subscription is a Service Oriented Architecture, Ruby on Rails program built to demo RESTful routes and simple database API solutions. It provides three endpoints and utilizes three tables.  

TABLES AND ATTRIBUTES </br>

![Screen Shot 2022-09-20 at 2 05 52 PM](https://user-images.githubusercontent.com/99059063/191354171-d6596c1a-563b-47cf-a346-9eac137e306c.png)

To learn more about how to use Tea Subscription, read the "How to Use Tea Subscription" section below. 

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- TOOLS USED -->
### Tools Used 
---

BUILT WITH 
* [Ruby v2.7.4](https://www.ruby-lang.org/en/)
* [Rails v5.2.8](https://rubyonrails.org/)

TESTED WITH
* [RSpec v3.11](https://rspec.info/)
* [Pry](https://pry.github.io/)
* [Simplecov](https://github.com/simplecov-ruby/simplecov)

GEMS 

* [JSON API Serializer](https://github.com/jsonapi-serializer/jsonapi-serializer)
* [Factory Bot Rails](https://github.com/thoughtbot/factory_bot_rails)
* [Faker](https://github.com/faker-ruby/faker)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- HOW TO USE TEA SUBSCRIPTION -->
### How to Use Tea Subscription
---

#### Download this Repo 
To install Tea Subcription locally, in your terminal run: </br>
* git clone git@github.com:ClayAsh/tea_subscription.git 
* cd tea_subscription 
* bundle install

#### API Endpoints 
Tea Subscription provides three API endpoints: </br>

The first endpoint can be used for retreiving all of a customers subscription, reguardless of the status. </br>
The customer's ID must be included in the params.</br>

- get '/api/v1/subscriptions', params: { customer_id: <customer_id> }

The second endpoint can be used for creating a new subscription. </br>
  Subscription params are :title, :price, :status, :frequency, :tea_id, :customer_id.</br>

- post '/api/v1/subscriptions', params: <subscription_params>

The last endpoint can be used to cancel a customer's subscription, or change any other attribute of the subscription except the id. A subscription ID must be included in the params. </br>

- patch '/api/v1/subscriptions/cancel', params: { id: <subscription_id>, status: "Canceled" } 

#### Testing 
To run the Tea Subscription testing suite, in your terminal run: 
* bundle exec rspec

<p align="right">(<a href="#top">back to top</a>)</p>
