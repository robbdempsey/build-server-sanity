"use strict";

const expect = require("chai").expect;
const value = "blue";

describe("[sanity-check]", () => {
  it("should always pass this test", ()=> {
    expect(value).to.be.eql(value);
  });
});