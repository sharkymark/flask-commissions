# Flask as a dev container

Flask is WSGI web app framework written in Python. This app calculates sales commissions based on user input in a standard web browser.

## dev container

I'm using a dev container so I don't have to install Python and Flask on my Mac. All I need a is a Docker daemon, which in my case is `colima` and VS Code with the dev container extension.

## Coder env builder

This dev container has been modified to work in Coder's `envbuilder` framework. To-Do: It appears starting flask, either as `CMD` at the end of the Dockerfile, or as `postCreateCommand` in the `devcontainer.json` is not working.

Therefore, manually start the flask app with this command run within the repo directory.

```bash
flask run --host=0.0.0.0
```

## Accessing the Flask app

If running locally or in `envbuilder`, open a web browser and enter `localhost:5001` to see the Flask app

## Resources

[Coder's envbuilder OSS repo](https://github.com/coder/envbuilder)

[Flask](https://flask.palletsprojects.com/)

[Dev Container specification](https://containers.dev/implementors/spec/)

[Install Coder's Cloud Development Environment OSS](https://github.com/coder/coder)