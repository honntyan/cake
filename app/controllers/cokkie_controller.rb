class CokkieController < ApplicationController
    <%= form_for @tweet do |f| %>

    <h1>クッキー</h1>
    <h2>こんなあなたにオススメ！</h2>
    <h3> <p>手軽に食べたい！</P>
end

<%= link_to "レシピはこちら","https://oceans-nadia.com/recipe_list/5144", target:"_blank", rel "noopener" %>