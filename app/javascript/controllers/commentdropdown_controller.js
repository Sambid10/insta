import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["commentmenu"]

  toggle() {
    this.commentmenuTarget.classList.toggle("hidden")
  }
}