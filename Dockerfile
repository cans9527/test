FROM python:3.11-slim

# 安装必要的 SSH 库
RUN pip install paramiko

# 将你的 Python 脚本复制进镜像
COPY entrypoint.py /entrypoint.py

# 运行脚本
ENTRYPOINT ["python", "/entrypoint.py"]
