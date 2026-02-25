import consumer from "channels/consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("connected to chatroom channel")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
  const messages = document.getElementById("message-container")
  messages.insertAdjacentHTML("beforeend", `
    <div class="event">
      <div class="content">
        <div class="summary">
          <strong>${data.user}</strong>: ${data.body}
        </div>
      </div>
    </div>
  `)
  }

});
