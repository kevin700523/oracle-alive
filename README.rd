version: '3.3'
services:
  alive:
    image: wbchn/oracle-alive:latest
    container_name: alive
    # -c 指啓用 CPU 定期浪費，後面跟隨每次浪費的間隔時間。如每 12 小時 23 分鐘 34 秒浪費一次，則為 12h23m34s。按照格式填。
    # -cp 指啓用粗粒度的 CPU 百分比浪費，浪費率將隨機器的使用水平實時變化。如最大浪費20%的CPU，則為 -cp 0.2。百分比的取值範圍 [0, 1] 並且注意不要和 -c 一起使用。
    # -m 指啓用浪費的內存量，後面是一個數字，單位為 GiB。啓動後會佔用對應量的內存，並且保持不會釋放，直到手動殺死進程。
    # -n 指啓用網絡定期浪費，後面跟隨每次浪費的間隔時間。格式同 CPU。會定期執行一次 Ookla Speed Test（還會輸出結果哦！）
    # -t 指設置網絡定期浪費的併發連接數。默認為10個，值越大消耗的資源越多，一般情況不需要更改。
    command: /app/NeverIdle -c 12h -cp 0.2 -m 10 -n 12h
    restart: always