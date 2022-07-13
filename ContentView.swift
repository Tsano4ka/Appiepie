import SwiftUI

struct ContentView : View {
    var vkapps: [Vkapp] = []
    
    var body: some View {
        NavigationView {
            List vkapps) { vkapp in
                VkappCell(vkapp: vkapp)
            }.navigationBarTitle(Text( "Сервисы VK"))
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView vkapps: testData)
    }
}
#endif
struct VkapprCell : View {
    let vkapp: Vkapp
    var body: some View {
        return NavigationLink(destination: VkappDetail(name: vkapp.name, headline: vkapp.headline, bio: vkapp.bio, image: vkapp.image)) {
            Image(vkapp.image)
                .cornerRadius(30)
            VStack(alignment: .leading) {
                Text(vkapp.name)
                Text(vkapp.headline)
                    .font(.subheadline)
                    .foregroundColor(.green)
            }
        }
    }
}



