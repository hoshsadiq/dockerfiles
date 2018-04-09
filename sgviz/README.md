# Info
App: SgViz
URL: https://github.com/y13i/sgviz

# Usage

```
docker build -t sgviz .
docker run --rm -it --name sgviz -v $HOME/.aws:/root/.aws -v $(pwd):/workdir sgviz <sgviz args>
```

Note the `--output-path` needs to be in `/workdir` (or whatever other mount you do). E.g.:
```
docker run --rm -it --name sgviz -v $HOME/.aws:/root/.aws -v $(pwd):/workdir sgviz generate --vpc-ids=myvpc --output-path /workdir/output --region eu-west-1 --profile dev
```
This will generate the following two files:
```
/workdir/output.dot
/workdir/output.png
```
