import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            VStack {
                VStack {
                    HStack {
                        Image(systemName: "app.fill")
                             .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        Spacer()
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(.systemGray))
                                
                               
                            Text("Search")
                                .font(.footnote)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(.systemGray))
                            Spacer()

                        }
                        .padding(7)
                        .padding(.horizontal, 8)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                            
                        Spacer()
                            Image(systemName: "circle.fill")
                             .foregroundColor(.yellow)
                    }
                    .padding(.horizontal)
                    
                    HStack(alignment: .center) {
                        Text("News")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.systemGray2))
                        Spacer()
                        Text("Home")
                            .font(.callout)
                            .fontWeight(.semibold)
                        Spacer()
                        Text("Popular")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(.systemGray2))
                            
                    }
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 10.0)
                    
                }
                HStack {
                    Image(systemName: "sparkles")
                        .foregroundColor(.gray)
                        .frame(width: /*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                        .imageScale(.small)
                    Text("BEST POSTS")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    Image(systemName: "chevron.compact.down")
                        .foregroundColor(.gray)
                        .imageScale(.small)
                    Spacer()
                    Image(systemName: "rectangle.grid.1x2.fill")
                        .foregroundColor(.gray)
                        .frame(width: /*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                        .imageScale(.small)
                    
                }
                .padding(.horizontal)
                .padding(.vertical, 16)
                .background(Color(.systemGray6))

                    
            }
            TabView {
                PostsView()
                    .tabItem {
                        Image(systemName: "square.fill")
                        .font(.system(size: 20, weight: .bold))

                    }
                
                
                PostsView()
                   .tabItem {
                       Image(systemName: "square.grid.2x2.fill")
                        .font(.system(size: 20, weight: .bold))
                       
                   }
                
                PostsView()
                   .tabItem {
                       Image(systemName: "pencil.tip")
                    .font(.system(size: 20, weight: .bold))
                       
                   }
                PostsView()
                   .tabItem {
                       Image(systemName: "ellipses.bubble.fill")
                    .font(.system(size: 20, weight: .bold))
                       
                   }
                PostsView()
                   .tabItem {
                       Image(systemName: "envelope.fill")
                    .font(.system(size: 20, weight: .bold))
                    
                   }
                
                
                
            }
            .accentColor(.black)
            .onAppear() {
                
                UITabBar.appearance().backgroundColor = .white
                UITabBar.appearance().barTintColor = UIColor.white
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Interactions: View {
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "arrow.up")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.gray)
                
                Text("204")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                
                Image(systemName: "arrow.down")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.gray)
                
            }
            Spacer()
            
            HStack {
                Image(systemName: "bubble.left")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.gray)
                
                Text("19")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
            }
            Spacer()
            
            HStack {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.gray)
                
                Text("Share")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
            }
            Spacer()
            
            HStack {
                Image(systemName: "bag.badge.plus")
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(.gray)
                
                Text("Award")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
            }
            
            
        }
        .padding(.horizontal)
    }
}

struct Post: View {
    var body: some View {
        VStack() {
            HStack (alignment: .top) {
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "circle.fill")
                            .foregroundColor(.gray)
                            .frame(width: /*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
                            .imageScale(.small)
                        
                        Text("r/subreddit")
                            .font(.caption)
                            .fontWeight(.regular)
                        
                        Text("· 4h · v.redd.it")
                            .font(.caption)
                            .fontWeight(.regular)
                    }
                    
                    Text("Veil of Maya - Pool Spray")
                        .font(.footnote)
                        .fontWeight(.regular)
                }
                
                Spacer()
                Image(systemName: "play.rectangle")
                    .frame(width: 90, height: 70)
                    .foregroundColor(.gray)
                    .imageScale(.large)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
            }
            .padding(.horizontal)
            
            
            Interactions()
            Divider()
        }
    }
}
