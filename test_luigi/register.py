from datetime import date, datetime

def main(filename):

    uri = f"output/{filename}.txt"

    with open(uri, "w") as stream:
        stream.write(datetime.now().strftime("%Y-%m-%d %H:%M:%S"))

    print(f"File '{uri}' wrote")