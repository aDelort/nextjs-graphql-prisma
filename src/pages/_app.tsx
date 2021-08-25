import type { AppProps } from 'next/app'
import React from 'react'
import { ClientOnly } from '../../graphql/components/ClientOnly'
import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client'

const client = new ApolloClient({
  uri: '/api/graphql',
  cache: new InMemoryCache(),
})

const App: React.FC<AppProps> = ({ Component, pageProps }) => {
  return (
    <ClientOnly>
      <ApolloProvider client={client}>
        <Component {...pageProps} />
      </ApolloProvider>
    </ClientOnly>
  )
}

export default App
