# NextJS-GraphQL-Prisma

This example shows how to implement a fullstack app in TypeScript with Next.js using React, Apollo Client (frontend), Nexus Schema and Prisma Client (backend). It can be forked from the indicated commit in the commit history, to start a new project with popular tools already plugged in.

To run the stack:

```bash
yarn generate-schema
yarn gql-codegen
yarn start-infra
yarn apply-migrations
yarn seed
yarn dev
```

## Scripts

Generate the GraphQL schema (generated/schema.graphql):

```bash
yarn generate-schema
```

Generate React hooks and types associated to every GraphQL queries and mutations found in the code base (generated/graphql.tsx):

```bash
yarn gql-codegen
```

Start a local database running at localhost:8080/

```bash
yarn start-infra
```

Apply migrations (prisma/migrations/\*) to the local database:

```bash
yarn apply-migrations
```

Plant seeds into the database:

```bash
yarn seed
```

Start the project at localhost:3000/

```bash
yarn dev
```

Generate the production build:

```bash
yarn build
```

Reinitialize the local database and seed it with fresh values:

```bash
yarn reset-db
```

Kill the database container:

```bash
yarn stop-infra
```
