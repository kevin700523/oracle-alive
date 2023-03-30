# oracle-alive

容器化[layou233/NeverIdle](https://github.com/layou233/NeverIdle)，Oracle 甲骨文保活

## Usage

### 1. docker cli

```shell
# 刪除已有的容器
docker rm -f oracle-alive

# 默認值啓動, 消耗1G內存，AMD和大內存ARM機器需要自己指定參數，見下方
docker run -idt --name oracle-alive --restart=always kevin700523/oracle-alive:latest

# 自定義參數: 自用AMD機器
docker run -idt --name oracle-alive --restart=always kevin700523/oracle-alive:latest /app/NeverIdle -c 1h17m -n 2h3m

# 自定義參數: 自用ARM機器
docker run -idt --name oracle-alive --restart=always kevin700523/oracle-alive:latest /app/NeverIdle -c 1h17m -m 2 -n 2h3m
```

### 2. docker compose

```
wget https://github.com/kevin700523/oracle-alive/raw/master/docker-compose.yaml
docker compose up -d
```