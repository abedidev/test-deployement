from fastapi import FastAPI
from helper import make_prediction

app = FastAPI(

)


@app.post("/prediction")
async def predict(input):
    return make_prediction(input)