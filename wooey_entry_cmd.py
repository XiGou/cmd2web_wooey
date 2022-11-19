import argparse
import subprocess
import sys

parser = argparse.ArgumentParser(description="my cmd tool.")
parser.add_argument("--text", help="anything", type=str, default="nothing")
parser.add_argument("--output", help="file name", type=str, default="output")

def main():
    args = parser.parse_args()
    subprocess.run(["sleep", "10"])
    subprocess.run(["echo", args.text])
    subprocess.run(["touch", args.output])
    return 0

if __name__ == "__main__":
    sys.exit(main())
