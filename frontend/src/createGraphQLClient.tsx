import { ApolloClient, createNetworkInterface } from 'react-apollo';

// 	http://dev.apollodata.com/react/initialization.html#creating-client
export const createGraphQLClient = () => {
  const networkInterface = createNetworkInterface({
    uri: 'https://api-petclinic-harness.learnatee.live/graphql'
  });
  const client = new ApolloClient({
    networkInterface: networkInterface
  });

  return client;
};
