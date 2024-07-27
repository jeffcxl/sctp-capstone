# Capstone Project Documentation

# Company Profile

(Insert company profile of the project we are building for)

# Software Engineering Team
Our software engineers are the architects behind our innovative products. They leverage their expertise in programming languages, such as Python, Java, and C++, to design, develop, and implement robust and scalable software solutions. Their skills range from front-end development for intuitive user interfaces to back-end systems that power our products' functionality.


# Project
**Project Name:** Insert project name

The Software Engineering team at (insert company name) is currently working on an exciting project called "(insert project name)." This project involves the development of (insert short description of the project)

# Getting started
To get the Node server running locally:
- [Clone this repo](https://www.atlassian.com/git/tutorials/setting-up-a-repository/git-clone): 
```sh 
git clone <URL>
```

- [npm install](https://docs.npmjs.com/cli/v10/commands/npm-install) to install all required dependencies
```sh
npm install
```

# Dependencies
Insert any dependencies this project has

# Application Structure
Insert the application structure of the project. For example what does index.js does

# Branching Strategies
[Production Branch](https://github.com/jeffcxl/sctp-capstone/tree/main)
- The main branch, also known as the master branch, represents the production-ready state of the application.
- It contains stable and thoroughly tested code that is ready to be deployed to the live environment.
- Only fully reviewed and approved code changes are merged into the main branch.
- It is typically protected, meaning that direct commits or modifications are restricted, and changes can only be introduced through pull requests after thorough code review and testing.

[ReadMe Branch](https://github.com/jeffcxl/sctp-capstone/tree/readme)
- The ReadMe branch is for testing out pulling and pushing changes to the branch by editing the readme
- This is a safe way for the team to try pulling a new branch and merging it to the main branch without affecting the integral code of our project.

**To test and try out this branch**
1. ```Git Pull```
2. ```Git Branch```: Identify which branch you are currently on

```sh
git branch
```

You should be on the main branch, it should show something like this:

```console
* main
  readme
```

The * indicates the current branch you are on.

3. ```Git Checkout <branch>```: Switch to the readme branch

```sh
git checkout readme
```

4. Git Branch: Identify which branch you are currently on

```sh
git branch
```

If you are on the readme branch, it should show something like this:

```console
  main
* readme
```

5. Make changes to branch

6. ```Git Add```

7. ```Git Commit```

8. ```Git Push Origin <branch>```

```sh
git push -u origin readme
```

9. ```Git Checkout <branch>```: Switch to the main branch

```sh
git checkout main
```

10. ```Git Branch```: Check that you are on the main branch

```sh
git branch
```

11. ```Git Merge <branch>```: Merge a specific branch content to the main branch

```sh
git merge readme
```

# Resources & References

## Git Branch & Merge Documentation
- [How to create a branch from the origin](https://www.geeksforgeeks.org/how-to-create-a-new-branch-in-git-and-push-the-code/)
- [How to safely merge a branch to the main](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging)
- [How to pull a branch from the main to work on it](https://www.atlassian.com/git/tutorials/syncing/git-pull)