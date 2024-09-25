import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  // static targets = ["toggleButton", "allExercises"]

  connect() {
    console.log("connected!")
  }

  // toggle() {
  //   console.log("toggled!")
  // }
}

//   toggle() {
//     if (this.toggleButtonTarget.textContent === "Show All Exercises") {
//       this.toggleButtonTarget.textContent = "Hide Exercises List"
//       this.allExercisesTarget.classList.remove("hidden")
//     } else if (this.toggleButtonTarget.textContent === "Hide Exercises List") {
//       this.toggleButtonTarget.textContent = "Show All Exercises"
//       this.allExercisesTarget.classList.add("hidden")
//     }
//   }
// }
