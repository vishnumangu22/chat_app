// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "channels"


document.addEventListener("turbo:submit-end", () => {
  const input = document.querySelector('input[name="message[body]"]')
  if (input) {
    input.value = ""
  }
})