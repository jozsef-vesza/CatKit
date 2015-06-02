import Quick
import Nimble
import CatKit

class CatFetcherSpec: QuickSpec {
    override func spec() {
        describe("cat fetcher service") {
            
            it("should download images of cats") {
                
                var testImage: UIImage?
                var testError: String?
                
                CatFetcherService.fetchCatsOfWidth(1200, height: 300,
                    fromSource: .PlaceKitten) { image, error in
                        testImage = image
                        testError = error
                }
                
                expect(testImage).toEventuallyNot(beNil())
                expect(testError).toEventually(beNil())
            }
            
            it("should respect the given dimensions") {
                
                var testWidth = CGFloat()
                var testHeight = CGFloat()
                
                
                CatFetcherService.fetchCatsOfWidth(1200, height: 200,
                    fromSource: .PlaceKitten) { image, error in
                        if let image = image {
                            testWidth = image.size.width
                            testHeight = image.size.height
                        }
                }
                
                expect(testWidth).toEventually(equal(1200))
                expect(testHeight).toEventually(equal(200))
            }
        }
    }
}
