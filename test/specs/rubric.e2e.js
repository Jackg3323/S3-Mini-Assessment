import Rubric from "../pageobjects/rubric.page";

describe("My Login application", function () {
  it("should login with valid credentials", async function () {
    await browser.open("https://inspiring-wisp-f3b8d3.netlify.app");

    await Rubric.login("tomsmith", "SuperSecretPassword!");
  });
});
