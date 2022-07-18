docker build -t arching arching

docker build -t archliquidprompt -f prompts/Dockerfile.liquidprompt prompts
docker build -t archbearings -f prompts/Dockerfile.bearings prompts
docker build -t archstarship -f prompts/Dockerfile.starship prompts
docker build -t archohmyposh -f prompts/Dockerfile.ohmyposh prompts
