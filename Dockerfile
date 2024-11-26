FROM python:3.12.7

WORKDIR /app

COPY . /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt /app/

RUN pip install -r requirements.txt

# Expose the port Streamlit will run on
EXPOSE 8501

# Run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
