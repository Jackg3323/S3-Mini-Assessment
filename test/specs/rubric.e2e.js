describe("My Login application", function () {
  it("should login with valid credentials", async function () {
    await browser.url("https://inspiring-wisp-f3b8d3.netlify.app");

    const row1 = await $("//tbody/tr[1]/td[1]");
    const row2 = await $("//tbody/tr[2]/td[1]");
    const row3 = await $("//tbody/tr[3]/td[1]");

    await row1.click();
    await row2.click();
    await row3.click();

    const score = await $("#score");
    const percent = await $("#percent");
    expect(score).toContain("30");
    expect(percent).toContain("100");
  });
});
