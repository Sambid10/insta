import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["navbarmenu"]

  toggle() {
    this.navbarmenuTarget.classList.toggle("hidden")
  }
}