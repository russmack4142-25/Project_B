import requests

def cat_fact():
    print("Your amazing cat fact for today is..", requests.get("https://meowfacts.herokuapp.com/").json()["data"][0])

if __name__ == "__main__":
   cat_fact()