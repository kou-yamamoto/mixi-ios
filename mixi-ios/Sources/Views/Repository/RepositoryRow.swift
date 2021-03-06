//
//  RepositoryRow.swift
//  mixi-ios
//
//  Created by kou yamamoto on 2021/05/24.
//

import SwiftUI

struct RepositoryRowView: View {
    let repository: RepositoryEntity

    var body: some View {
        HStack {
            Image("GitHubMark")
                .resizable()
                .frame(width: 44, height: 44)
            VStack(alignment: .leading) {
                Text(repository.owner.name).font(.caption)
                    .font(.caption)
                Text(repository.name)
                    .font(.body)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct RepositoryRow_Previews: PreviewProvider {
    static var previews: some View {
       RepositoryRowView(repository: RepositoryEntity(id: 1, name: "", owner: User(name: ""), description: "", stargazersCount: 1))
    }
}
