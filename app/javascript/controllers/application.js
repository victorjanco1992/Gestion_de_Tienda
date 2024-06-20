import { Application } from "@hotwired/stimulus"
import 'jquery';


window.jQuery = jQuery;
window.$ = jQuery;
const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
