//
//  ProductView.swift
//  ProductAPIAPP
//
//  Created by Rohan Khambhadiya on 12/12/24.
//

import SwiftUI

struct ProductView: View {

    let viewModel = ProductViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(Array(viewModel.products.enumerated()), id: \.element.id) { index, product in
                    NavigationLink {
                        ProductDetailsView(products: viewModel.products, index: index)
                    } label: {
                        ProductRowView(product: product)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Products")
        }
        .task {
            await viewModel.fetchProducts()
        }
    }
}


#Preview {
    ProductView()
}
