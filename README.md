# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
<table class="table table-striped">
  <thead>
    <tr>
      <th>Title</th>
      <th>Description</th>
      <th colspan="3">Action</th>

    </tr>
  </thead>

  <tbody>
    <% @articles.each do |article| %>
      <tr>
        <td><%= article.title %></td>
        <td><%= article.description %></td>
        <td> <%= link_to 'Show' , article_path(article) %></td>
        <td> <%= link_to 'Edit' , edit_article_path(article) %></td>
        <td> <%= link_to 'Delete' , article_path(article), method: :delete , data: { turbo_method: :delete, turbo_confirm: 'Are you sure?' } %> </td>

      </tr>
    <% end %>
  </tbody>
</table>
<p>
<%= link_to 'Create a new article', new_article_path, class: 'btn btn-primary' %>

  </p>