import requests, random

def random_character():
    c = random.choice(requests.get("https://potterapi-fedeperin.vercel.app/en/characters").json())
    print(f"This is your character of the day is {c.get('fullName', 'Unknown')}, "
          f"played by {c.get('interpretedBy', 'Unknown')}, "
          f"born {c.get('birthdate', 'Unknown')}")

if __name__ == "__main__":
    random_character()