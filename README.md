---
title: Flask app to calculate sales commissions
description: A simple Flask app to calculate sales commissions using a dev container
tags: [flask, python, devcontainer, coder]
---

# Flask app to calculate sales commissions

Flask is WSGI web app framework written in Python. This app calculates sales commissions based on user input in a standard web browser.

## dev container

I'm using a dev container so I don't have to install Python and Flask on my Mac. All I need a is a Docker daemon, which in my case is `colima` and VS Code with the dev container extension.

## devcontainer CLI

Coder now supports the devcontainer CLI to manage dev containers. This is an alternative to Coder's envbuilder approach with Kaniko. 

```bash
flask run --host=0.0.0.0
```

## Accessing the Flask app

Open a web browser and enter `localhost:5000` to see the Flask app

## code-server IDE

Uses Coder's code-server devcontainer feature to install code-server in the dev container. This allows you to use VS Code in a web browser to edit the code - from within the dev container.

## Resources

[Flask](https://flask.palletsprojects.com/)

[Dev Container specification](https://containers.dev/implementors/spec/)

[Coder's code-server devcontainer feature](https://github.com/coder/devcontainer-features/blob/main/src/code-server/README.md)
