import {LitElement, css, html} from "lit";
import {customElement, property} from "lit/decorators.js";

@customElement("hello-world")
class HelloWorld extends LitElement {
  render() {
    return html`<p>Hello, World!</p>`;
  }
}

// customElements.define("hello-world", HelloWorld);

