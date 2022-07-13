import SwiftUI

struct VkappDetail : View {
    var name: String
    var headline: String
    var bio: String
    
    var body: some View {
        VStack {
            Image(image)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.blue, lineWidth: 4)
                )
                .shadow(radius: 15)
            Text(name)
                .font(.title)
            Text(headline)
                .font(.subheadline)
            Divider()
            Text(bio)
                .font(.headline)
                .multilineTextAlignment(.center)
                .lineLimit(50)
            }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

#if DEBUG
struct VkappDetail_Previews : PreviewProvider {
    static var previews: some View {
        Vkapp(name: "ВКонтакте" , headline: "https://vk.com/", bio: "Самая популярная соцсеть и первое суперприложение в России", image: "https://publicstorage.hb.bizmrg.com/sirius/vk.png")
    }
}
#endif
