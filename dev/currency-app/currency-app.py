import requests, random

def random_currency():
    data = requests.get("https://api.euroratesapi.dev/api/all-currencies").json()
    c = random.choice(data)
    print(f"Your currency today is... {c.get('symbol', 'N/A')} - {c.get('name', 'Unknown')}")

if __name__ == "__main__":
    random_currency()