# Flask as a dev container

Flask is WSGI web app framework written in Python. This app calculates sales commissions based on user input in a standard web browser.

## dev container

I'm using a dev container so I don't have to install Python and Flask on my Mac. All I need a is a Docker daemon, which in my case is `colima` and VS Code with the dev container extension.

## devcontainer CLI

Coder now supports the devcontainer CLI to manage dev containers. This is an alternative to Coder's envbuilder approach with Kaniko. 

## Coder env builder

This dev container has been modified to work in Coder's `envbuilder` framework. Specifically, the `postStartCommand` in the `devcontainer.json` file has been modified to run the Flask app. The `postStartCommand` is a command that runs after the container is started and the dev container is built. Otherwise, the Coder workspace UI hangs and the workspace becomes unhealthy.
The `postStartCommand` is run in the background and the output is redirected to a log file with no hangup protection. The command is as follows:

```json
"postStartCommand": "nohup flask run > /tmp/flask.log 2>&1 &"
```

If the process ends and you want to start the flask app with this command run within the repo directory or use the command in `postStartCommand`.

```bash
flask run --host=0.0.0.0
```

## Accessing the Flask app

If running locally or in `envbuilder`, open a web browser and enter `localhost:5000` to see the Flask app

## Resources

[Coder's envbuilder OSS repo](https://github.com/coder/envbuilder)

[Coder docs in dev containers](https://coder.com/docs/admin/templates/managing-templates/devcontainers/add-devcontainer#dev-container-lifecycle-scripts)

[Flask](https://flask.palletsprojects.com/)

[Dev Container specification](https://containers.dev/implementors/spec/)
