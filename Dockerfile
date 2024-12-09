FROM mcr.microsoft.com/vscode/devcontainers/python:3.10

COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 4465

CMD ["squirrels", "run","--host", "0.0.0.0", " --port", "4465"]